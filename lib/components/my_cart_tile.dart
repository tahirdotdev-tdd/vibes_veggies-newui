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
              padding: const EdgeInsets.all(25),
              child: Column(
                children: [
                  Row(
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
                  )
                ],
              ),
            ));
  }
}
