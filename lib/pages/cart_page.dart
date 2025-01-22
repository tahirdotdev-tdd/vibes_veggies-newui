import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vibes_veggies/components/my_cart_tile.dart';
import 'package:vibes_veggies/models/restraunt.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Restraunt>(builder: (context, restraunt, child) {
      final userCart = restraunt.cart;

      //scaffold UI
      return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.transparent,
          foregroundColor: Colors.grey.shade500,
          title: Text(
            "Cart",
            style: TextStyle(color: Theme.of(context).colorScheme.primary),
          ),
        ),
        body:  Column(
          children: [
            Expanded(child: ListView.builder(
              itemCount: userCart.length,
              itemBuilder: (context, index) {
                final cartItem = userCart[index];
                return MyCartTile(cartItem: cartItem);
              },
            ))
          ],
        ),
      );
    });
  }
}
