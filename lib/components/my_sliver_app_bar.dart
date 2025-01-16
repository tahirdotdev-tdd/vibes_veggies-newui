import 'package:flutter/material.dart';

class MySliverAppBar extends StatelessWidget {
  final Widget child;
  final Widget title;

  const MySliverAppBar({super.key, required this.child, required this.title});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Theme.of(context).colorScheme.surface, // Dynamic surface color
      foregroundColor: Theme.of(context).colorScheme.onSurface, // Dynamic foreground color
      expandedHeight: 340,
      collapsedHeight: 120,
      floating: false,
      pinned: true,
      actions: [
        // Cart button with theme-based color
        IconButton(
          icon: Icon(
            Icons.shopping_cart,
            color: Theme.of(context).colorScheme.primary, // Dynamic icon color
          ),
          onPressed: () {},
        ),
      ],
      title: Text(
        "Veggie Vibes",
        style: TextStyle(
          color: Theme.of(context).colorScheme.onSurface, // Dynamic title color
          fontWeight: FontWeight.bold,
        ),
      ),
      flexibleSpace: FlexibleSpaceBar(
        title: title,
        centerTitle: true,
        titlePadding:
        const EdgeInsets.only(left: 0, right: 0, bottom: 16, top: 0),
        expandedTitleScale: 1.0,
        background: Container(
          color: Theme.of(context).colorScheme.surface, // Matches the surface color
          child: Padding(
            padding: const EdgeInsets.only(bottom: 50.0),
            child: child,
          ),
        ),
      ),
    );
  }
}
