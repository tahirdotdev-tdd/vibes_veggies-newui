import 'package:flutter/material.dart';

ThemeData lightMode = ThemeData(
  colorScheme: ColorScheme.light(
    brightness: Brightness.light,
    primary: Colors.grey.shade500,
    onPrimary: Colors.white,
    secondary: Colors.grey.shade100,
    onSecondary: Colors.black,
    surface: Colors.grey.shade300,
    onSurface: Colors.black,
    error: Colors.red,
    onError: Colors.white,
  ),
);
