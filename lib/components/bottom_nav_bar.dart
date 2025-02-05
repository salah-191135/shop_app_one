import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomNav extends StatelessWidget {
  void Function(int)? onTabChange;

  BottomNav({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      child: GNav(
        tabBorderRadius: 15,
        mainAxisAlignment: MainAxisAlignment.center,
        color: const Color(0xFF28161c),
        activeColor: const Color(0xFFb9b9b9),
        tabActiveBorder: Border.all(color: const Color(0xFFb9b9b9), width: 2),
        tabBackgroundColor: const Color.fromARGB(228, 40, 22, 28),
        onTabChange: (value) => onTabChange!(value),
        tabs: [
          GButton(icon: Icons.home, text: 'Shop'),
          GButton(icon: Icons.shopping_bag, text: 'Cart'),
        ],
      ),
    );
  }
}
