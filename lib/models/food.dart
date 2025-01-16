class Food {
  late final String name;
  late final String description;
  late final String imagePath;
  late final String price;
  late final FoodCategories category;
  List<AddOn> availableAddons = [];

  Food({
    required this.name,
    required this.description,
    required this.imagePath,
    required this.price,
    required this.category,
    required this.availableAddons,
  });
}

//food categories

enum FoodCategories {
  greenVeggies,
  nonGreenVeggies,
  salads,
  pastes,
  masalah,
}

//addons

class AddOn {
  late final String name;
  late final String price;

  AddOn({
    required this.name,
    required this.price,
  });
}
