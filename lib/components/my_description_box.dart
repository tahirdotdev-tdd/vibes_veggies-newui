import 'package:flutter/material.dart';

class MyDescriptionBox extends StatelessWidget {
  const MyDescriptionBox({super.key});

  @override
  Widget build(BuildContext context) {
    // Dynamic text styles
    var myPrimaryTextStyle = TextStyle(
      color: Theme.of(context).colorScheme.onSurface, // Primary text color
      fontWeight: FontWeight.bold,
    );

    var mySecondaryTextStyle = TextStyle(
      color: Theme.of(context).colorScheme.primary, // Accent color from theme
      fontWeight: FontWeight.bold,
    );

    var myLabelTextStyle = TextStyle(
      color: Theme.of(context).colorScheme.onSurface.withOpacity(0.7), // Subtle text color
    );

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 18.0),
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surface, // Background color
          border: Border.all(
            color: Theme.of(context).colorScheme.onSurface.withOpacity(0.5), // Border color
          ),
          borderRadius: BorderRadius.circular(10), // Rounded corners
          boxShadow: [
            BoxShadow(
              color: Theme.of(context).colorScheme.onSurface.withOpacity(0.1),
              blurRadius: 8,
              offset: const Offset(0, 4), // Subtle shadow
            ),
          ],
        ),
        padding: const EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Delivery fee section
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("50.0 PKR", style: myPrimaryTextStyle),
                Text("Delivery Fee", style: myLabelTextStyle),
              ],
            ),

            // Delivery time section
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text("2-3 Hours", style: mySecondaryTextStyle),
                Text("Delivery Time", style: myLabelTextStyle),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
