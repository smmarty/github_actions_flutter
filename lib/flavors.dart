enum Flavor {
  PROD,
  STAGE,
  DEV,
}

class F {
  static Flavor? appFlavor;

  static String get name => appFlavor?.name ?? '';

  static String get title {
    switch (appFlavor) {
      case Flavor.PROD:
        return 'TestApp';
      case Flavor.STAGE:
        return 'TestApp-stage';
      case Flavor.DEV:
        return 'TestApp-dev';
      default:
        return 'title';
    }
  }

}
