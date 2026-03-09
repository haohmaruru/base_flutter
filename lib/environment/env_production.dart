import 'package:base_flutter/data/model/flavor.dart';
import 'package:envied/envied.dart';

part 'env_production.g.dart';

@Envied(path: 'env/.env.production', obfuscate: true)
abstract class EnvProduction {
  @EnviedField(varName: 'APP_NAME', obfuscate: true)
  static final String appName = _EnvProduction.appName;

  @EnviedField(varName: 'API_BASE_URL', obfuscate: true)
  static final String apiBaseUrl = _EnvProduction.apiBaseUrl;

  @EnviedField(varName: 'API_KEY', obfuscate: true)
  static final String apiKey = _EnvProduction.apiKey;

  static toEnvironment() {
    return Environment(apiBaseUrl, appName, Flavor.production);
  }
}
