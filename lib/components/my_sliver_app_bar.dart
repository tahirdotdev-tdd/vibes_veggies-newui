import 'package:flutter/material.dart';

class MySliverAppBar extends StatelessWidget {
  final Widget child;
  final Widget title;
  const MySliverAppBar({super.key, required this.child, required this.title});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Theme.of(context).colorScheme.surface,
      foregroundColor: Theme.of(context).colorScheme.onSurface,
      expandedHeight: 340,
      collapsedHeight: 120,
      floating: false,
      pinned: true,
      actions: [
        // Cart button
        IconButton(
          icon: const Icon(Icons.shopping_cart),
          onPressed: () {},
        ),
      ],
      title: const Text("Veggie Vibes"),
      flexibleSpace: FlexibleSpaceBar(
        title: title,
        centerTitle: true,
        titlePadding:
            const EdgeInsets.only(left: 0, right: 0, bottom: 16, top: 0),
        expandedTitleScale: 1.0,
        background: Padding(
          padding: const EdgeInsets.only(bottom: 50.0),
          child: child,
        ),
      ),
    );
  }
}
