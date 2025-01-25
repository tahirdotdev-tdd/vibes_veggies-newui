import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vibes_veggies/components/my_quantity_selector.dart';
import 'package:vibes_veggies/models/restraunt.dart';
import 'package:vibes_veggies/pages/cart_item.dart';

class MyCartTile extends StatelessWidget {
  final CartItem cartItem;
  const MyCartTile({super.key, required this.cartItem});

  @override
  Widget build(BuildContext context) {
    return Consumer<Restraunt>(
        builder: (context, restraunt, child) => Container(
              decoration: BoxDecoration(
                  color: Colors.blueGrey.shade50,
                  borderRadius: BorderRadius.circular(10)),
              margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
              padding: const EdgeInsets.all(25),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      //food image
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            cartItem.food.imagePath,
                            height: 100,
                            width: 100,
                          ),
                        ),
                        const SizedBox(
                          width: 30,
                        ),
                        //name and price
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(cartItem.food.name),
                            Text(cartItem.food.price),
                          ],
                        ),
                        const Spacer(),
                        //increment or decrement buttons
                        MyQuantitySelector(
                            quantity: cartItem.quantity,
                            food: cartItem.food,
                            onIncrement: () {
                              restraunt.addToCart(
                                  cartItem.food, cartItem.selectedAddons);
                            },
                            onDecrement: () {
                              restraunt.removeFromCart(cartItem);
                            })
                      ],
                    ),
                  ),
                  SizedBox(
                    height: cartItem.selectedAddons.isEmpty ? 0 : 60,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      padding: const EdgeInsets.only(
                          left: 10, bottom: 10, right: 10),
                      children: cartItem.selectedAddons
                          .map((addon) => Padding(
                                padding: const EdgeInsets.only(right: 5.0),
                                child: FilterChip(
                                  label: Row(
                                    children: [
                                      // addon name
                                      Text(addon.name),
                                      // addon price
                                      Text(' ${addon.price} PKR'),
                                    ],
                                  ),
                                  shape: StadiumBorder(
                                      side: BorderSide(
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                  )),
                                  onSelected: (value) {},
                                  backgroundColor: Colors.teal,
                                  labelStyle: TextStyle(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .inversePrimary),
                                ),
                              ))
                          .toList(),
                    ),
                  )
                ],
              ),
            ));
  }
}
