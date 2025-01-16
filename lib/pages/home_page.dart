import 'package:flutter/material.dart';
import 'package:vibes_veggies/components/my_current_location.dart';
import 'package:vibes_veggies/components/my_description_box.dart';
import 'package:vibes_veggies/components/my_drawer.dart';
import 'package:vibes_veggies/components/my_sliver_app_bar.dart';
import 'package:vibes_veggies/components/my_tab_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface, // Background color for light/dark mode
      drawer: const MyDrawer(),
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          MySliverAppBar(
            title: MyTabBar(tabController: _tabController),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Divider(
                  indent: 25,
                  endIndent: 25,
                  color: Theme.of(context).colorScheme.onSurface.withOpacity(0.7), // Divider color
                ),
                const MyCurrentLocation(),
                const MyDescriptionBox(),
              ],
            ),
          ),
        ],
        body: TabBarView(
          controller: _tabController,
          children: [
            // Home Page Items
            ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) => ListTile(
                title: Text(
                  "Home Page Item $index",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.onSurface, // Text color based on theme
                  ),
                ),
              ),
            ),
            // Settings Page Items
            ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) => ListTile(
                title: Text(
                  "Settings Page Item $index",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.onSurface, // Text color based on theme
                  ),
                ),
              ),
            ),
            // Person Page Items
            ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) => ListTile(
                title: Text(
                  "Person Page Item $index",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.onSurface, // Text color based on theme
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
