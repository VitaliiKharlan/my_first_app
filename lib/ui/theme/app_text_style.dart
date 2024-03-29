import 'package:flutter/material.dart';

abstract class AppTextStyle {
  static const bodySupplementary = TextStyle(
    fontFamily: 'DM Sans',
    fontSize: 12,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w400,
    height: 1.0,
    letterSpacing: 0.0,
  );

  static const headingH4 = TextStyle(
    fontFamily: 'Lufga',
    fontSize: 18,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w600,
    height: 1.0,
    letterSpacing: 0.0,
  );

  static const headingH5 = TextStyle(
    fontFamily: 'Lufga',
    fontSize: 16,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w500,
    height: 1.0,
    letterSpacing: 0.0,
  );

  static const promo = TextStyle(
    fontFamily: 'Lato',
    fontSize: 12,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w500,
    height: 1.2,
    letterSpacing: 0.0,
  );

  static const usualTextOfNewsH8 = TextStyle(
    fontFamily: 'RobotoMono',
    fontSize: 10,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w400,
    height: 1.25,
    letterSpacing: 0.0,
  );

  static const usualTextOfNewsH7 = TextStyle(
    fontFamily: 'RobotoMono',
    fontSize: 14,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.bold,
    height: 1.25,
    letterSpacing: 0.4,
  );
}
