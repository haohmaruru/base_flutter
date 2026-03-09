import 'package:base_flutter/data/model/flavor.dart';
import 'package:envied/envied.dart';

part 'env_staging.g.dart';

@Envied(path: 'env/.env.staging', obfuscate: true)
abstract class EnvStaging {
  @EnviedField(varName: 'APP_NAME', obfuscate: true)
  static final String appName = _EnvStaging.appName;

  @EnviedField(varName: 'API_BASE_URL', obfuscate: true)
  static final String apiBaseUrl = _EnvStaging.apiBaseUrl;

  @EnviedField(varName: 'API_KEY', obfuscate: true)
  static final String apiKey = _EnvStaging.apiKey;

  static toEnvironment() {
    return Environment(apiBaseUrl, appName, Flavor.staging);
  }
}
