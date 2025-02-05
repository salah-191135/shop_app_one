import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app_one/models/cart.dart';
import 'package:shop_app_one/pages/home_page.dart';
import 'package:shop_app_one/pages/intro_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Cart(),
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        home: IntroPage(),
        routes: {
          '/home': (context) => const HomePage(),
          '/intro': (context) => const IntroPage(),
        },
      ),
    );
  }
}
