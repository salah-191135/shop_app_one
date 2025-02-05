import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app_one/components/shoe_tile.dart';
import 'package:shop_app_one/models/cart.dart';
import 'package:shop_app_one/models/shoe.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  void addShoeToCart(Shoe shoe) {
    Provider.of<Cart>(context, listen: false).addItemToCart(shoe);
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Added to cart'),
        content: Text('cheack your cart for more details'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Column(
        children: [
          //search bar
          Container(
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: const Color(0xFF28161c),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Search',
                    style: TextStyle(
                        color: const Color(0xFFb9b9b9), fontSize: 20)),
                Icon(
                  Icons.search,
                  color: const Color(0xFFb9b9b9),
                )
              ],
            ),
          ),
          //a nice message
          Text(
            'Yesterday you said tomorrow. Just do it.',
            style: TextStyle(
              color: const Color(0xFF28161c),
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          // products
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Hot Products",
                  style:
                      TextStyle(color: const Color(0xFF28161c), fontSize: 20),
                ),
                Text(
                  "see more",
                  style: TextStyle(
                    color: Colors.blueAccent,
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                  ),
                )
              ],
            ),
          ),

          Expanded(
            child: ListView.builder(
              itemCount: 4,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                Shoe shoe = value.getShoeShop()[index];
                return ShoeTile(
                  shoe: shoe,
                  onTap: () => addShoeToCart(shoe),
                );
              },
            ),
          ),
          Divider(color: const Color(0xFFb9b9b9))
        ],
      ),
    );
  }
}
