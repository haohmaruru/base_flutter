class Environment {
  final String apiUrl;
  final String appName;
  final Flavor flavor;
  Environment(this.apiUrl, this.appName, this.flavor);
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
