import 'package:base_flutter/environment/env_dev.dart';
import 'package:base_flutter/main.dart';

void main() async {
  final environment = EnvDev.toEnvironment();
  startMainWithSetupEnvironment(environment);
}
