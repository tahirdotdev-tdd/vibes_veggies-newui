import 'package:flutter/material.dart';

import '../models/food.dart';

class MyQuantitySelector extends StatelessWidget {
  final int quantity;
  final Food food;
  final VoidCallback onIncrement;
  final VoidCallback onDecrement;
  const MyQuantitySelector(
      {super.key,
      required this.quantity,
      required this.food,
      required this.onIncrement,
      required this.onDecrement});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        borderRadius: BorderRadius.circular(50),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          GestureDetector(
            onTap: onDecrement,
            child: const Icon(
              Icons.remove,
              size: 20,
              color: Colors.red,
            ),
          )
          ,
          //quantity count
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              quantity.toString(),
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          GestureDetector(
            onTap: onIncrement,
            child: const Icon(
              Icons.add,
              size: 20,
              color: Colors.green,
            ),
          )
        ],
      ),
    );
  }
}
