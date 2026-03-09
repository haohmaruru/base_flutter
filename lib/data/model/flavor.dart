class Environment {
  final String apiUrl;
  final String appName;
  final Flavor flavor;

  Environment.dev()
    : flavor = Flavor.dev,
      apiUrl =
          'https://its-a-be-test-alb-816908668.ap-northeast-1.elb.amazonaws.com',
      appName = 'Dev Base';

  Environment.staging()
    : flavor = Flavor.staging,
      apiUrl =
          'https://its-a-be-test-alb-816908668.ap-northeast-1.elb.amazonaws.com',
      appName = 'Stag Base';

  Environment.production()
    : flavor = Flavor.production,
      apiUrl =
          'https://its-a-be-test-alb-816908668.ap-northeast-1.elb.amazonaws.com',
      appName = 'Prod Base';

  @override
  String toString() {
    switch (this) {
      case Environment.dev:
        return 'dev';
      case Environment.staging:
        return 'staging';
      case Environment.production:
        return 'production';
      default:
        return 'production';
    }
  }

  static Environment getEnvironmentFromString(String env) {
    switch (env) {
      case 'dev':
        return Environment.dev();
      case 'staging':
        return Environment.staging();
      case 'production':
        return Environment.production();
      default:
        return Environment.production();
    }
  }
}

enum Flavor { dev, staging, production }

extension FlavorExtension on Flavor {
  String get name {
    switch (this) {
      case Flavor.dev:
        return 'dev';
      case Flavor.staging:
        return 'staging';
      case Flavor.production:
        return 'production';
    }
  }

  Flavor getFlavorFromString(String env) {
    switch (env) {
      case 'dev':
        return Flavor.dev;
      case 'staging':
        return Flavor.staging;
      case 'production':
        return Flavor.production;
      default:
        return Flavor.production;
    }
  }
}
