enum Environment { development, staging, qa, production }

class Env {
  static Environment environment = Environment.staging;
  static const String staging = 'https://moni-staging-1.vercel.app/api/loans';
  static const String live = "";

  static final coreBaseUrl =
      environment == Environment.production ? live : staging;
}
