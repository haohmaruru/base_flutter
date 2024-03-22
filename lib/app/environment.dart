import 'package:base/data/model/firebase_config.dart';
import 'package:firebase_core/firebase_core.dart';

enum EnvironmentType { dev, prod }

class EnvironmentConfig {
  final EnvironmentType env;
  final String apiUrl;
  final String appName;
  final String uploadUrl;
  final FirebaseConfig firebaseConfig;

  EnvironmentConfig.dev()
      : env = EnvironmentType.dev,
        appName = 'Base dev',
        apiUrl = 'https://dummyjson.com',
        uploadUrl = '',
        firebaseConfig = FirebaseConfig(
          android: const FirebaseOptions(
            apiKey: '',
            appId: '',
            messagingSenderId: '',
            projectId: '',
            databaseURL: '',
            storageBucket: '',
          ),
          ios: const FirebaseOptions(
            apiKey: 'AIzaSyD2ZnTwvKKhtZqopYfC3dnQq8xKl0BA4tc',
            appId: '1:307713282587:ios:926d4fdded0cf1ddf4debe',
            messagingSenderId: '307713282587',
            projectId: 'firebase-notification-238811',
            databaseURL: 'https://fir-notification-238811.firebaseio.com',
            storageBucket: 'firebase-notification-238811.appspot.com',
            androidClientId:
                '307713282587-f1e67en5a7kb1ugiud0cdco0bnbvm7fp.apps.googleusercontent.com',
            iosClientId:
                '307713282587-dskobs0qrssk7fm4hkr7gcqa7mhp75ok.apps.googleusercontent.com',
            iosBundleId: 'com.finos.hdb',
          ),
        );

  EnvironmentConfig.prod()
      : env = EnvironmentType.prod,
        appName = 'Base prod',
        apiUrl = 'https://dummyjson.com',
        uploadUrl = '',
        firebaseConfig = FirebaseConfig(
          android: const FirebaseOptions(
            apiKey: '',
            appId: '',
            messagingSenderId: '',
            projectId: '',
            databaseURL: '',
            storageBucket: '',
          ),
          ios: const FirebaseOptions(
            apiKey: '',
            appId: '',
            messagingSenderId: '',
            projectId: '',
            databaseURL: '',
            storageBucket: '',
            androidClientId: '',
            iosClientId: '',
            iosBundleId: '',
          ),
        );
}
