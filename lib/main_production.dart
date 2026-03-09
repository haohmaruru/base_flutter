import 'package:base_flutter/environment/env_production.dart';
import 'package:base_flutter/main.dart';

void main() {
  final environment = EnvProduction.toEnvironment();
  startMainWithSetupEnvironment(environment);
}
