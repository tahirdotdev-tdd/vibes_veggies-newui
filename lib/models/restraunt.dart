import 'package:collection/collection.dart';
import 'package:flutter/cupertino.dart';
import 'package:vibes_veggies/models/food.dart';
import 'package:vibes_veggies/pages/cart_item.dart';

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
  List<CartItem> get cart => _cart;

  //Operations
  final List<CartItem> _cart = [];


  //-> Add to cart
  void addToCart(Food food, List<AddOn> selectedAddons) {
    CartItem? cartItem = _cart.firstWhereOrNull((item) {
      //check if food items are same
      bool isSameFood = item.food == food;

      //check if the list of selected addons are the same
      bool isSameAddons =
          const ListEquality().equals(item.selectedAddons, selectedAddons);
      return isSameFood && isSameAddons;
    });

    //if item already exists, increase its quantity

    if (cartItem != null) {
      cartItem.quantity++;
    }
    //otherwise, add new item to cart
    else {
      _cart.add(CartItem(food: food, selectedAddons: selectedAddons));
    }
    notifyListeners();
  }

  //-> Remove from cart
  void removeFromCart(CartItem cartItem) {
    int cartIndex = _cart.indexOf(cartItem);

    if (cartIndex != -1) {
      if (_cart[cartIndex].quantity > 1) {
        _cart[cartIndex].quantity--;
      } else {
        _cart.removeAt(cartIndex);
      }
    }
    notifyListeners();
  }

  //-> Get total price
  double getTotalPrice() {
    double total = 0.0;

    for (CartItem cartItem in _cart) {
      double itemTotal = cartItem.food.price as double;
      for (AddOn addOn in cartItem.selectedAddons) {
        itemTotal += addOn.price as double;
      }
      total += itemTotal * cartItem.quantity;
    }
    return total;
  }

  //-> Get total number of items in cart
  int getTotalItemCount() {
    int totalItemCount = 0;
    for (CartItem cartItem in _cart) {
      totalItemCount += cartItem.quantity;
    }
    return totalItemCount;
  }

  //clear the cart
  void clearCart() {
    _cart.clear();
    notifyListeners();
  }

  //Helpers

//generate a receipt

//convert double into money

//format list of addons into a string summary
}
