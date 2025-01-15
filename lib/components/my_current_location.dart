import 'package:flutter/material.dart';

class MyCurrentLocation extends StatelessWidget {
  const MyCurrentLocation({super.key});

  void openLocationSearchBox(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: const Text("Your location"),
              content: const TextField(
                decoration: InputDecoration(hintText: "Search address..."),
              ),
              actions: [
                //cancel button
                MaterialButton(
                  onPressed: () => {
                    Navigator.pop(context),
                  },
                  child: const Text("Cancel"),
                ),

                //save button
                MaterialButton(
                  onPressed: () => {
                    Navigator.pop(context),
                  },
                  child: const Text("Save"),
                )
              ],
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Deliver Now",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          GestureDetector(
            onTap: () => openLocationSearchBox(context),
            child: const Row(
              children: [
                //address
                Text(
                    "29 A, 1st Floor, 1st Main, 1st Block, Koramangala, Bangalore"),
                //dropdown menu
                Icon(Icons.keyboard_arrow_down_rounded),
              ],
            ),
          )
        ],
      ),
    );
  }
}
