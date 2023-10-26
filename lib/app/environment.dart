class EnvironmentConfig {
  final EnvironmentType env;
  final String apiUrl;
  final String appName;

  EnvironmentConfig.dev()
      : env = EnvironmentType.dev,
        appName = 'Base dev',
        apiUrl = '';

  EnvironmentConfig.prod()
      : env = EnvironmentType.prod,
        appName = 'Base prod',
        apiUrl = '';
}

enum EnvironmentType { dev, prod }
