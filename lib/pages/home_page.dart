import 'package:flutter/material.dart';
import 'package:vibes_veggies/components/my_current_location.dart';
import 'package:vibes_veggies/components/my_description_box.dart';
import 'package:vibes_veggies/components/my_drawer.dart';
import 'package:vibes_veggies/components/my_sliver_app_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      drawer: const MyDrawer(),
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          const MySliverAppBar(
            title: Text("title"),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Divider(
                  indent: 25,
                  endIndent: 25,
                  color: Colors.black,
                ),
                //my current location
                MyCurrentLocation(),

                //description box
                MyDescriptionBox(),
              ],
            ),
          )
        ],
        body: Container(
          color: Colors.blue,
        ),
      ),
    );
  }
}
