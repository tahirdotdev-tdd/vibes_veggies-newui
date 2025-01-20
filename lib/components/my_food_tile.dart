import 'package:flutter/material.dart';

import '../models/food.dart';

class MyFoodTile extends StatelessWidget {
  final Food food;
  final VoidCallback? onTap;

  const MyFoodTile({super.key, required this.food, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        food.name,
                        style: TextStyle(
                            color: Theme.of(context).colorScheme.primary),
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      Text(food.price.toString()),
                      const SizedBox(
                        height: 7,
                      ),
                      Text(
                        food.description,
                        style: TextStyle(
                            color: Theme.of(context).colorScheme.onSurface),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    food.imagePath,
                    width: 100,
                    height: 100,
                  ),
                ),
              ],
            ),
          ),
        ),
        Divider(
          color: Theme.of(context).colorScheme.primary,
          endIndent: 25,
          indent: 25,
        )
      ],
    );
  }
}
