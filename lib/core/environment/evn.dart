import 'package:intl/intl.dart';

enum Environment { development, staging, qa, production }

class Env {
  var formatter = NumberFormat("#,##0", "en_US");

  static Environment environment = Environment.staging;
  static const String staging = 'https://moni-staging-1.vercel.app/api/loans';
  static const String live = "";

  static final coreBaseUrl =
      environment == Environment.production ? live : staging;
}
