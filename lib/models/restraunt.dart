import 'package:flutter/cupertino.dart';
import 'package:vibes_veggies/models/food.dart';

class Restraunt extends ChangeNotifier {
  final List<Food> _menu = [

    //green Veggie
    Food(
      name: "Palak",
      description: "Fresh, pre-cut and ready-to-cook",
      imagePath: "lib/images/greeenVeggies/cauliflower.jpeg",
      price: "250.0 PKR",
      category: FoodCategories.greenVeggies,
      availableAddons: [
        AddOn(name: "Masalah", price: "30"),
        AddOn(name: "Lehsan", price: "30"),
      ],
    ),
    Food(
      name: "Palak",
      description: "Fresh, pre-cut and ready-to-cook",
      imagePath: "lib/images/greeenVeggies/cauliflower.jpeg",
      price: "250.0 PKR",
      category: FoodCategories.greenVeggies,
      availableAddons: [
        AddOn(name: "Masalah", price: "30"),
        AddOn(name: "Lehsan", price: "30"),
      ],
    ),
    Food(
      name: "Palak",
      description: "Fresh, pre-cut and ready-to-cook",
      imagePath: "lib/images/greeenVeggies/gobi.jpeg",
      price: "250.0 PKR",
      category: FoodCategories.greenVeggies,
      availableAddons: [
        AddOn(name: "Masalah", price: "30"),
        AddOn(name: "Lehsan", price: "30"),
      ],
    ),
    Food(
      name: "Palak",
      description: "Fresh, pre-cut and ready-to-cook",
      imagePath: "lib/images/greeenVeggies/gobi.jpeg",
      price: "250.0 PKR",
      category: FoodCategories.greenVeggies,
      availableAddons: [
        AddOn(name: "Masalah", price: "30"),
        AddOn(name: "Lehsan", price: "30"),
      ],
    ),

    //non green veggies
    Food(
      name: "Turnips",
      description: "Fresh, pre-cut and ready-to-cook",
      imagePath: "lib/images/nonGreen/turnips.jpeg",
      price: "300.0 PKR",
      category: FoodCategories.nonGreenVeggies,
      availableAddons: [
        AddOn(name: "Masalah", price: "30"),
        AddOn(name: "Lehsan", price: "30"),
      ],
    ),

    //masalah
    Food(
      name: "Dhania",
      description: "Fresh, pre-cut and ready-to-cook",
      imagePath: "lib/images/masalah/dhania.jpeg",
      price: "300.0 PKR",
      category: FoodCategories.masalah,
      availableAddons: [
        AddOn(name: "Lehsan", price: "30"),
      ],
    ),

    //pastes
    Food(
      name: "Carrots",
      description: "Fresh, pre-cut and ready-to-cook",
      imagePath: "lib/images/nonGreen/carrots.jpeg",
      price: "150.0 PKR",
      category: FoodCategories.nonGreenVeggies,
      availableAddons: [
        AddOn(name: "Masalah", price: "30"),
        AddOn(name: "Lehsan", price: "30"),
      ],
    )

  ];


  //Getters
List<Food> get menu => _menu;

  //Operations

 //-> Add to cart

 //-> Remove from cart

 //-> Get total price

 //-> Get total number of items in cart

 //clear the cart

  //Helpers

//generate a receipt

//convert double into money

//format list of addons into a string summary
}
