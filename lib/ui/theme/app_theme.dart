import 'package:flutter/material.dart';
import 'app_colors.dart';

abstract class AppTheme {
  static final light = ThemeData(
    primarySwatch: Colors.blue,
    scaffoldBackgroundColor: AppColors.primaryMain,
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
    appBarTheme: AppBarTheme(
      color: AppColors.indicatorsWarningMain,
      backgroundColor: AppColors.indicatorsWarningDark,
      titleTextStyle: const TextStyle(
        color: Colors.green,
        fontSize: 20,
      ),
    ),
    useMaterial3: true,
  );

  static final dark = ThemeData(
    primarySwatch: Colors.blue,
    scaffoldBackgroundColor: AppColors.primaryMain,
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
    appBarTheme: AppBarTheme(
      color: AppColors.indicatorsWarningMain,
      backgroundColor: AppColors.indicatorsWarningDark,
      titleTextStyle: const TextStyle(
        color: Colors.green,
        fontSize: 20,
      ),
    ),
    useMaterial3: true,
  );
}
