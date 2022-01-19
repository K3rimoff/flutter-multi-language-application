import 'package:flutter/widgets.dart';

class AppConstants {
  static const trLocale = Locale("tr", "TR");
  static const usLocale = Locale("en", "US");
  static const gbLocale = Locale("en", "GB");
  static const path = 'assets/lang';

  static const supportedLocale = [
    AppConstants.trLocale,
    AppConstants.usLocale,
    AppConstants.gbLocale,
  ];
}
