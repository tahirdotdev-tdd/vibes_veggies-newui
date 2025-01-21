import 'package:vibes_veggies/models/food.dart';

class CartItem {
  final Food food;
  final List<AddOn> selectedAddons;
  int quantity;

  CartItem({
    required this.food,
    this.quantity = 1,
    List<AddOn>? selectedAddons,
  }) : selectedAddons = selectedAddons ?? [];

  double get totalPrice {
    double addonsPrice = selectedAddons.fold(0, (sum, addon) {
      return sum + (double.tryParse(addon.price) ?? 0.0);
    });
    return ((double.tryParse(food.price) ?? 0.0) + addonsPrice) * quantity;
  }
}
