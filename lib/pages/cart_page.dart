import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app_one/components/cart_item.dart';
import 'package:shop_app_one/models/cart.dart';
import 'package:shop_app_one/models/shoe.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(
              'Cart Page',
              style: TextStyle(
                color: const Color(0xFF28161c),
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 40),
            Expanded(
              child: ListView.builder(
                itemCount: value.getUserCart().length,
                itemBuilder: (context, index) {
                  Shoe shoe = value.getUserCart()[index];

                  return CartItem(
                    shoe: shoe,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
