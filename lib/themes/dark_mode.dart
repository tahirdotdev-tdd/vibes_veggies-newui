import 'package:flutter/material.dart';

ThemeData darkMode = ThemeData(
  colorScheme: const ColorScheme.dark(
    brightness: Brightness.dark,
    primary: Color(0xFF1E88E5), // Vibrant blue for primary color
    onPrimary: Colors.white, // White for text/icons on the primary color
    secondary: Color(0xFF424242), // Dark grey for secondary elements
    tertiary: Color(0xFF616161), // Medium grey for accents and less prominent elements
    onSecondary: Colors.white, // White for text/icons on the secondary color
    surface: Color(0xFF121212), // Deep grey for surfaces
    onSurface: Colors.white, // White for text/icons on the background
    // error: Colors.red.shade400, // Slightly muted red for errors
    onError: Colors.white, // White for text/icons on errors
  ),
  scaffoldBackgroundColor: const Color(0xFF121212), // Matching background color
  appBarTheme: const AppBarTheme(
    backgroundColor: Color(0xFF1E88E5), // Primary color for app bar
    foregroundColor: Colors.white, // White text/icons in app bar
    elevation: 2, // Subtle shadow for depth
  ),
  textTheme: const TextTheme(
    bodyLarge: TextStyle(color: Colors.white), // Body text
    bodyMedium: TextStyle(color: Colors.white70), // Secondary body text
    titleLarge: TextStyle(color: Colors.blueAccent), // Headline text
  ),
  iconTheme: const IconThemeData(color: Colors.white70), // White for icons with slight transparency
  buttonTheme: const ButtonThemeData(
    buttonColor: Color(0xFF1E88E5), // Buttons in the primary color
    textTheme: ButtonTextTheme.primary, // White text on buttons
  ),
);
