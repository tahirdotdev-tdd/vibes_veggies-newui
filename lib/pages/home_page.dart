import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vibes_veggies/components/my_current_location.dart';
import 'package:vibes_veggies/components/my_description_box.dart';
import 'package:vibes_veggies/components/my_drawer.dart';
import 'package:vibes_veggies/components/my_food_tile.dart';
import 'package:vibes_veggies/components/my_sliver_app_bar.dart';
import 'package:vibes_veggies/components/my_tab_bar.dart';
import 'package:vibes_veggies/models/food.dart';
import 'package:vibes_veggies/models/restraunt.dart';
import 'package:vibes_veggies/pages/food_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController =
        TabController(length: FoodCategories.values.length, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

//sorting specific category list
  List<Food> _filterMenuByCategory(
      FoodCategories category, List<Food> fullMenu) {
    return fullMenu.where((food) => food.category == category).toList();
  }

  //return list of foods in category
  List<Widget> getFoodInThisCategory(List<Food> fullMenu) {
    return FoodCategories.values.map((category) {
      List<Food> categoryMenu = _filterMenuByCategory(category, fullMenu);
      return ListView.builder(
          padding: const EdgeInsets.only(top: 0, bottom: 8),
          itemCount: categoryMenu.length,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            final food = categoryMenu[index];
            return MyFoodTile(
              food: food,
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => FoodPage(food: food),
                ),
              ),
            );
          });
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context)
          .colorScheme
          .surface, // Background color for light/dark mode
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
                        color: Theme.of(context)
                            .colorScheme
                            .onSurface
                            .withOpacity(0.7), // Divider color
                      ),
                      const MyCurrentLocation(),
                      const MyDescriptionBox(),
                    ],
                  ),
                ),
              ],
          body: Consumer<Restraunt>(
            builder: (context, restraunt, child) => TabBarView(
                controller: _tabController,
                children:
                    // Home Page Items
                    getFoodInThisCategory(restraunt.menu)),
          )),
    );
  }
}
