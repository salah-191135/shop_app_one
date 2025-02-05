import 'package:flutter/material.dart';
import 'package:shop_app_one/models/shoe.dart';

class Cart extends ChangeNotifier {
  //list of all shoes for sale
  List<Shoe> shoeShop = [
    Shoe(
        name: 'zoom freak',
        price: '\$100',
        imagePath: "lib/images/pexels-mnzoutfits-1598505.jpg",
        description: 'best shoe in us'),
    Shoe(
        name: 'jordan alpha',
        price: '\$100',
        imagePath: "lib/images/pexels-ankurbagai-1280064.jpg",
        description: 'best shoe in us'),
    Shoe(
        name: 'jordan 1',
        price: '\$100',
        imagePath: "lib/images/pexels-nytheone-1032110.jpg",
        description: 'best shoe in us'),
    Shoe(
        name: 'jordan 4',
        price: '\$100',
        imagePath: "lib/images/pexels-nytheone-1070360.jpg",
        description: 'best shoe in us'),
  ];

  // list of shoes in user cart
  List<Shoe> userCart = [];
  // get list of all shoes for sale
  List<Shoe> getShoeShop() => shoeShop;
  // get list of shoes in user cart
  List<Shoe> getUserCart() => userCart;
  // add shoe to cart
  void addItemToCart(Shoe shoe) => {
        userCart.add(shoe),
        notifyListeners(),
      };
  //remove shoe from cart
  void removeItemFromCart(Shoe shoe) => {
        userCart.remove(shoe),
        notifyListeners(),
      };
}
