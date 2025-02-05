import 'package:flutter/material.dart';
import 'package:shop_app_one/components/bottom_nav_bar.dart';
import 'package:shop_app_one/pages/cart_page.dart';
import 'package:shop_app_one/pages/shop_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void NavigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    ShopPage(),
    CartPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFb9b9b9),
      bottomNavigationBar: BottomNav(
        onTabChange: (index) => NavigateBottomBar(index),
      ),
      appBar: AppBar(
        leading: Builder(builder: (context) {
          return IconButton(
            icon: Icon(Icons.menu, color: const Color(0xFF28161c)),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          );
        }),
        backgroundColor: Colors.transparent,
      ),
      drawer: Drawer(
        backgroundColor: const Color.fromARGB(255, 37, 24, 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // logo
            Column(
              children: [
                DrawerHeader(
                  // padding: const EdgeInsets.all(12.0),
                  child: Image.asset(
                    'lib/images/nike-seeklogo.png',
                    height: 150,
                    width: 150,
                    color: const Color(0xFFb9b9b9),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.home,
                      color: const Color(0xFFb9b9b9),
                    ),
                    title: Text(
                      'Home',
                      style: TextStyle(color: const Color(0xFFb9b9b9)),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.info,
                      color: const Color(0xFFb9b9b9),
                    ),
                    title: Text(
                      'About',
                      style: TextStyle(color: const Color(0xFFb9b9b9)),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                leading: Icon(
                  Icons.logout,
                  color: const Color(0xFFb9b9b9),
                ),
                title: Text(
                  'Logout',
                  style: TextStyle(color: const Color(0xFFb9b9b9)),
                ),
                onTap: () {
                  Navigator.pushNamed(context, '/intro');
                },
              ),
            ),
            //other pages
          ],
        ),
      ),
      body: _pages[_selectedIndex],
    );
  }
}
