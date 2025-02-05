import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app_one/models/cart.dart';
import 'package:shop_app_one/models/shoe.dart';

class CartItem extends StatefulWidget {
  Shoe shoe;
  CartItem({super.key, required this.shoe});

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  void removeItem() {
    Provider.of<Cart>(
      context,
      listen: false,
    ).removeItemFromCart(widget.shoe);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFF28161c),
        borderRadius: BorderRadius.circular(10),
      ),
      margin: const EdgeInsets.all(8),
      child: ListTile(
        leading: Image.asset(
          widget.shoe.imagePath,
          height: 70,
          width: 70,
        ),
        title: Text(
          widget.shoe.name,
          style: TextStyle(color: const Color(0xFFb9b9b9)),
        ),
        subtitle: Text(
          widget.shoe.price,
          style: TextStyle(color: const Color(0xFFb9b9b9)),
        ),
        trailing: IconButton(
          icon: Icon(Icons.delete),
          color: const Color(0xFFb9b9b9),
          onPressed: removeItem,
        ),
      ),
    );
  }
}
