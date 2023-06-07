import 'package:flutter/material.dart';

class ThemeCustomer {
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    textTheme: const TextTheme(
        // titleMedium: TextStyle(color: Colors.red, fontSize: 40),
        ),
  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    textTheme: const TextTheme(
        // titleMedium: TextStyle(color: Colors.blue, fontSize: 40),
        ),
  );
}
