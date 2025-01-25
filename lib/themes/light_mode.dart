import 'package:flutter/material.dart';

ThemeData lightMode = ThemeData(
  colorScheme: ColorScheme.light(
    brightness: Brightness.light,
    primary: const Color(0xFF228B22D), // A soft blue for the primary color
    onPrimary: Colors.white, // White for text/icons on the primary color
    secondary: Colors.white12, // A warm amber for accents
    onSecondary: Colors.black, // Black for text/icons on the secondary color
    surface: Colors.white, // White for cards and surfaces
    onSurface: Colors.black, // Black for text/icons on the background
    error: Colors.red.shade700, // A slightly darker red for errors
    onError: Colors.white, // White for text/icons on errors
  ),
  scaffoldBackgroundColor: Colors.grey.shade50, // Matching the background color
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.blue, // Primary color for app bar
    foregroundColor: Colors.white, // White text/icons in app bar
    elevation: 2, // Subtle shadow for elevation
  ),
  textTheme: TextTheme(
    bodyLarge: const TextStyle(color: Colors.black), // Body text
    bodyMedium: const TextStyle(color: Colors.black), // Secondary body text
    titleLarge: TextStyle(color: Colors.blue.shade800), // Headlines
  ),
  iconTheme: const IconThemeData(color: Colors.blue), // Icon color matching primary
  buttonTheme: const ButtonThemeData(
    buttonColor: Colors.blue, // Button color
    textTheme: ButtonTextTheme.primary, // White text on buttons
  ),
);
