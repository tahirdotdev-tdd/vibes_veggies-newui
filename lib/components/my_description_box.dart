import 'package:flutter/material.dart';

class MyDescriptionBox extends StatelessWidget {
  const MyDescriptionBox({super.key});

  @override
  Widget build(BuildContext context) {

    var myPrimaryTextStyle = TextStyle(
      color: Theme.of(context).colorScheme.onSurface,
      fontWeight: FontWeight.bold,
    );
    var mySecondaryTextStyle = const TextStyle(
      color: Colors.green,
      fontWeight: FontWeight.bold,
    );

    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        border: Border.all(color: Theme.of(context).colorScheme.onSurface),
      ),
      padding:const EdgeInsets.all(25),
      margin: const EdgeInsets.all(25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //delivery fee
          Column(
            children: [
              Text("50.0 PKR", style: myPrimaryTextStyle),
              const Text("Delivery Fee"),
            ],
          ),


          //delivery time
           Column(
            children: [
              Text("2-3 Hours", style: mySecondaryTextStyle),
              const Text("Delivery Time"),
            ],
          )
        ],
      ),
    );
  }
}
