import 'package:flutter/material.dart';

class AppThemes {
  static ThemeData get light {
    return ThemeData(
      appBarTheme: const AppBarTheme(),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(),
      scaffoldBackgroundColor: Colors.white,
      primaryColor: Colors.blue,
      splashColor: Colors.transparent,
    );
  }
}
