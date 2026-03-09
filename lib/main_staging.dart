import 'package:base_flutter/environment/env_staging.dart';
import 'package:base_flutter/main.dart';

void main() {
  final environment = EnvStaging.toEnvironment();
  startMainWithSetupEnvironment(environment);
}
