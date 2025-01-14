import 'package:flutter/material.dart';

ThemeData darkMode = ThemeData(
  colorScheme: const ColorScheme.dark(
    brightness: Brightness.light,
    primary: Color.fromARGB(255, 122, 122, 122),
    onPrimary: Colors.white,
    secondary: Color.fromARGB(255, 30, 30, 30),
    tertiary: Color.fromARGB(255, 47, 47, 47),
    onSecondary: Colors.black,
    surface: Color.fromARGB(255, 20, 20, 20),
    onSurface: Colors.black,
    error: Colors.red,
    onError: Colors.white,
  ),
);
