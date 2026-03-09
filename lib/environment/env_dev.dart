import 'package:base_flutter/data/model/flavor.dart';
import 'package:envied/envied.dart';

part 'env_dev.g.dart';

@Envied(path: './env/.env.dev', obfuscate: true)
abstract class EnvDev {
  @EnviedField(varName: 'APP_NAME', obfuscate: true)
  static final String appName = _EnvDev.appName;

  @EnviedField(varName: 'API_BASE_URL', obfuscate: true)
  static final String apiBaseUrl = _EnvDev.apiBaseUrl;

  @EnviedField(varName: 'API_KEY', obfuscate: true)
  static final String apiKey = _EnvDev.apiKey;

  static toEnvironment() {
    return Environment(apiBaseUrl, appName, Flavor.dev);
  }
}
