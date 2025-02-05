import 'package:flutter/material.dart';
import 'package:shop_app_one/models/shoe.dart';

class ShoeTile extends StatelessWidget {
  Shoe shoe;
  void Function()? onTap;

  ShoeTile({super.key, required this.shoe, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      width: 300,
      decoration: BoxDecoration(
        color: const Color.fromARGB(220, 40, 22, 28),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //shoe pic
        children: [
          // SizedBox(
          //   height: 20,
          // ),
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Image.asset(
              shoe.imagePath,
              height: 242,
              width: 270,
            ),
          ),

          //description
          Text(
            shoe.description,
            style: TextStyle(color: const Color(0xFFb9b9b9), fontSize: 20),
          ),
          SizedBox(
            height: 16,
          ),
          //price and details
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, bottom: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      shoe.name,
                      style: TextStyle(
                        color: const Color(0xFFb9b9b9),
                        fontSize: 30,
                      ),
                    ),
                    Text(
                      shoe.price,
                      style: TextStyle(
                          color: const Color(0xFFb9b9b9), fontSize: 16),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap:onTap,
                child: Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: const Color(0xFF28161c),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ),
                  ),
                  child: Icon(
                    Icons.add,
                    color: const Color(0xFFb9b9b9),
                  ),
                ),
              ),
            ],
          ),

          //add to cart
        ],
      ),
    );
  }
}
