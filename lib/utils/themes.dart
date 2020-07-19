import 'package:flutter/material.dart';

import 'package:mavha_flutter_challenge/utils/colors.dart';

class AppThemes {
  static final ThemeData light = ThemeData(
    primaryColor: AppColors.primaryColor,
    primaryColorBrightness: Brightness.dark,
    primaryColorDark: AppColors.primaryColorDark,
    accentColor: AppColors.primaryColor,
    scaffoldBackgroundColor: Colors.white,
    highlightColor: Colors.transparent,
    splashFactory: InkRipple.splashFactory,
    dividerColor: Colors.grey[200],
    appBarTheme: AppBarTheme(
      brightness: Brightness.dark,
      elevation: 0,
      textTheme: TextTheme(
        headline6: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
    ),
    buttonTheme: ButtonThemeData(
      minWidth: 56,
      height: 56,
      padding: EdgeInsets.all(16),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      highlightColor: Colors.transparent,
    ),
  );
}
