# base_flutter

## 🛠️ Installation Requirements

To run this project, you need the following tools installed on your computer:

### Flutter

* **Flutter SDK**: Minimum version 3.35.6.

* **Dart version**: 3.9.0.

### Android

* **Android Gradle Plugin**: 8.13.0.

* **Kotlin version**: 2.2.20.

* **NDK version**: 27.0.12077973.

* **Editor**: Android Studio

### Ios

* **Ios version**: minimum version 15.6.

* **Editor**: Xcode 26.0.1.

## 🚀 Getting Started

This project is a starting point for a Flutter application.

### ⚠️ Prepare setup before start project

Create a project and multiple application (maping with flavor **dev/staging/production**) for
android/ios in firebase console.

* Android: Download files **google-services.json** for android (maping with flavor *
  *dev/staging/production**) and copy to directory **./android/app/src/<dev/staging/production>**.
* Ios: Download files **GoogleService-Info.plist** for android (maping with flavor *
  *dev/staging/production**) and copy to directory **./ios/runner/Firebase/<dev/staging/production>
  **.

### ⚠️ Important step before run

**Please run the following commands for generate code before build and run the application for the
first time:**

```
./init.sh
```

### 🗒️ Note

If you have seen message in terminal:
**permission denied: ./init.sh**
Please run this command for grand permission:

```
chmod +x init.sh
```

and after that you can run:

```
./init.sh
```

## 🚀 Generate code

```
flutter pub run build_runner build --delete-conflicting-outputs
```

### Generate l10n for language

```
flutter gen-l10n
```

### Generate model

```
flutter pub run build_runner build
```

### Generate image

Please add image with format **image_\<snake_case_name\>.png** (ex: image_banner_test.png) to
directory **/assets/images** then run command:

```
./images-gen.sh
```

you will see a field define path of this image with format lowerCamelCase in class **AppImages**
locale at **/lib/res/images.dart**.

ex: with file **image_banner_test.png** you will see:

```
class AppImages {
  static String get bannerTest => "assets/images/image_banner_test.png";
}
```

### Generate icon

Please add icon with format **icon_\<snake_case_name\>.svg** (ex: icon_button_test.svg) to directory
**/assets/icons** then run command:

```
./icons-gen.sh
```

you will see a field define path of this icon with format lowerCamelCase in class **AppIcons**
locale at **/lib/res/icons.dart**.

ex: with file **icon_button_test.png** you will see:

```
class AppIcons {
  static String get buttonTest => "assets/icons/icon_button_test.svg";
}
```

## 🚀 Build and run

### Android

* Debug:

```
flutter build apk --flavor <flavor> --debug --target=lib/main_<flavor>.dart

**Ex: **
flavor dev: 
flutter build apk --flavor dev --debug --target=lib/main_dev.dart
```

* Release:

```
flutter build apk --obfuscate --flavor <flavor> --split-debug-info=build/app/outputs/symbols --target=lib/main_<flavor>.dart

**Ex Build: **
flutter build apk --obfuscate --flavor dev --split-debug-info=build/app/outputs/symbols --target=lib/main_dev.dart

**Install**
adb install -r build/app/outputs/flutter-apk/app-dev-release.apk   
```

### IOS

* Debug

```
flutter run --flavor <flavor> --target=lib/main_<flavor>.dart

Ex: flutter run --flavor dev --target=lib/main_dev.dart
```

* Release:

```
flutter build ipa --obfuscate --flavor <flavor> --split-debug-info=build/app/outputs/symbols --target=lib/main_<flavor>.dart

Ex: flutter build ipa --obfuscate --flavor dev --split-debug-info=build/app/outputs/symbols --target=lib/main_dev.dart
```