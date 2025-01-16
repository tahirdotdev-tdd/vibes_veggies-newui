import 'package:flutter/material.dart';

class MyTextfield extends StatelessWidget {
  const MyTextfield({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obscureText,
  });

  final TextEditingController controller;
  final String hintText;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 45.0),
      child: TextField(
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(
            color: Theme.of(context).colorScheme.onSurface.withOpacity(0.6), // Dynamic hint text color
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Theme.of(context).colorScheme.primary.withOpacity(0.5), // Dynamic enabled border color
            ),
            borderRadius: BorderRadius.circular(10), // Rounded corners
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Theme.of(context).colorScheme.primary, // Dynamic focused border color
              width: 2.0, // Thicker border for focus state
            ),
            borderRadius: BorderRadius.circular(10), // Rounded corners
          ),
          filled: true,
          fillColor: Theme.of(context).colorScheme.surface.withOpacity(0.1), // Subtle background color
        ),
        style: TextStyle(
          color: Theme.of(context).colorScheme.onSurface, // Dynamic text color
        ),
        cursorColor: Theme.of(context).colorScheme.primary, // Dynamic cursor color
      ),
    );
  }
}
