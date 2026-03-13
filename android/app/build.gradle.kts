import org.gradle.process.ExecOperations
import org.gradle.kotlin.dsl.support.serviceOf

plugins {
    id("com.android.application")
    id("kotlin-android")
    id("com.google.gms.google-services")
    id("com.google.firebase.crashlytics")
    id("dev.flutter.flutter-gradle-plugin")
    id("com.google.firebase.firebase-perf")
}

android {
    namespace = "com.example.baseflutter"
    compileSdk = 36
    ndkVersion = "27.0.12077973"

    compileOptions {
        isCoreLibraryDesugaringEnabled = true
        sourceCompatibility = JavaVersion.VERSION_11
        targetCompatibility = JavaVersion.VERSION_11
    }

    kotlinOptions {
        jvmTarget = JavaVersion.VERSION_11.toString()
    }

    defaultConfig {
        // TODO: Specify your own unique Application ID (https://developer.android.com/studio/build/application-id.html).
        applicationId = "com.example.baseflutter"
        // You can update the following values to match your application needs.
        // For more information, see: https://flutter.dev/to/review-gradle-config.
        minSdk = 24
        targetSdk = 36
        versionCode = flutter.versionCode
        versionName = flutter.versionName
        multiDexEnabled = true
    }

    buildTypes {
        release {
            // Signing with the debug keys for now, so `flutter run --release` works.
            signingConfig = signingConfigs.getByName("debug")
            // Automatically upload mapping file of Android native to Firebase
            configure<com.google.firebase.crashlytics.buildtools.gradle.CrashlyticsExtension> {
                mappingFileUploadEnabled = true
            }
        }
    }

    flavorDimensions += "default"
    productFlavors {
        create("dev") {
            dimension = "default"
            applicationIdSuffix = ".dev"
            resValue("string", "app_name", "dev base flutter")
        }
        create("staging") {
            dimension = "default"
            applicationIdSuffix = ".staging"
            resValue("string", "app_name", "stag base flutter")
        }
        create("production") {
            dimension = "default"
            resValue("string", "app_name", "base flutter")
        }
    }
}

flutter {
    source = "../.."
}


fun getAppId(flavorName: String): String {
    val jsonFile = project.file("src/$flavorName/google-services.json")
    if (!jsonFile.exists()) return ""
    val json = groovy.json.JsonSlurper().parseText(jsonFile.readText()) as Map<*, *>
    val projectInfo = json["project_info"] as Map<*, *>
    val client = (json["client"] as List<*>).firstOrNull() as? Map<*, *>
    return client?.get("client_info")?.let { (it as Map<*, *>)["mobilesdk_app_id"] } as? String ?: ""
}

/**
 * Registers a task to upload Flutter debug symbols to Crashlytics for a given variant.
 */
fun registerUploadFlutterSymbolsTask(variant: com.android.build.gradle.api.ApplicationVariant) {
    val flavorName = variant.productFlavors[0].name
    val appId = getAppId(flavorName)

    // Path to symbols directory (usually passed via --split-debug-info when building Flutter)
    // By default, it's set to the "symbols" directory at the root of the Flutter project
    val flutterRoot = project.rootDir.parentFile.absolutePath
    val symbolPath = "$flutterRoot/build/app/outputs/symbols"
//    val symbolPath = "${project.rootDir}/../app/outputs/symbols"

    val taskName = "uploadFlutterSymbols${variant.name.replaceFirstChar { it.uppercase() }}"
    val uploadTask = project.tasks.register(taskName) {
        description = "Upload Flutter debug symbols to Crashlytics for ${variant.name}"
        group = "firebase"

        doLast {
            if (appId.isEmpty()) {
                println("Warning: Could not find App ID for flavor $flavorName. Skipping upload.")
                return@doLast
            }

            println("Uploading symbols for $flavorName with App ID: $appId...")
            val execOps = project.serviceOf<ExecOperations>()
            execOps.exec {
                commandLine("firebase", "crashlytics:symbols:upload", "--app=$appId", symbolPath)
            }
        }
    }

    // Automatically run after the APK or Bundle build finishes
    variant.assembleProvider.configure {
        finalizedBy(uploadTask)
    }
}

android.applicationVariants.all {
    if (buildType.name == "release") {
        registerUploadFlutterSymbolsTask(this)
    }
}

dependencies {
    implementation("androidx.multidex:multidex:2.0.1")

    // Firebase
    implementation(platform("com.google.firebase:firebase-bom:34.4.0"))
    implementation("com.google.firebase:firebase-analytics")
    implementation("com.google.firebase:firebase-crashlytics")

    // Local notification
    coreLibraryDesugaring("com.android.tools:desugar_jdk_libs:2.1.5")
}
