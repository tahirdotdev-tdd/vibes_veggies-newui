import 'package:flutter/material.dart';

class MyCurrentLocation extends StatelessWidget {
  const MyCurrentLocation({super.key});

  void openLocationSearchBox(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: Theme.of(context).colorScheme.surface, // Dialog background color
        title: Text(
          "Your location",
          style: TextStyle(
            color: Theme.of(context).colorScheme.onSurface, // Title text color
          ),
        ),
        content: TextField(
          decoration: InputDecoration(
            hintText: "Search address...",
            hintStyle: TextStyle(
              color: Theme.of(context).colorScheme.onSurface.withOpacity(0.6), // Hint text color
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Theme.of(context).colorScheme.primary, // Border color
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Theme.of(context).colorScheme.primary, // Focused border color
              ),
            ),
          ),
        ),
        actions: [
          // Cancel button
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text(
              "Cancel",
              style: TextStyle(
                color: Theme.of(context).colorScheme.error, // Error color for cancel
              ),
            ),
          ),

          // Save button
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text(
              "Save",
              style: TextStyle(
                color: Theme.of(context).colorScheme.primary, // Primary color for save
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Deliver Now",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Theme.of(context).colorScheme.onSurface, // Dynamic text color
            ),
          ),
          GestureDetector(
            onTap: () => openLocationSearchBox(context),
            child: Row(
              children: [
                // Address
                Text(
                  "29 A, 1st Floor, 1st Main",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.onSurface, // Dynamic text color
                  ),
                ),
                // Dropdown menu icon
                Icon(
                  Icons.keyboard_arrow_down_rounded,
                  color: Theme.of(context).colorScheme.onSurface, // Dynamic icon color
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
