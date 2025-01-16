import 'package:flutter/material.dart';

class MyDrawerTile extends StatelessWidget {
  final String text;
  final IconData? icon;
  final void Function()? onTap;

  const MyDrawerTile({super.key, required this.text, this.icon, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0),
      child: ListTile(
        title: Text(
          text,
          style: TextStyle(
            color: Theme.of(context).colorScheme.onSurface, // Adapts to theme
            fontWeight: FontWeight.w600, // Bold for better emphasis
          ),
        ),
        leading: Icon(
          icon,
          color: Theme.of(context).colorScheme.primary, // Matches theme primary color
          size: 24, // Adjust icon size if needed
        ),
        onTap: onTap,
        tileColor: Theme.of(context).colorScheme.surface, // Background color for tile
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8), // Rounded edges for a modern look
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        hoverColor: Theme.of(context).colorScheme.primary.withOpacity(0.1), // Subtle hover effect
      ),
    );
  }
}
  //
  // In the above code snippet, we have created a custom drawer tile widget that can be used in the drawer. The widget has a text, icon, and onTap function as parameters. The widget uses ListTile to display the text and icon. The tile color, shape, and hover color are customized to match the theme.
  // Conclusion
  // In this article, we learned how to create a custom drawer in Flutter. We created a custom drawer widget and used it in the main app. We also created a custom drawer tile widget to display the drawer items. We customized the drawer background, text, and icons to match the theme.
  // I hope this article was helpful to you. If you have any questions or feedback, please let me know in the comments below.
  // Happy coding!
  // Peer Review Contributions by:  Lalithnarayan C