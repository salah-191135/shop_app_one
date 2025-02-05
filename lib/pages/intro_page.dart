import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFb9b9b9),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //logo
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                'lib/images/nike-seeklogo.png',
                height: 200,
                width: 200,
                color: const Color(0xFF28161c),
              ),
            ),
            // SizedBox(height: 20),
            //title
            Text(
              'Just Do It',
              style: TextStyle(
                color: const Color(0xFF28161c),
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 40),
            // subtitle
            Text(
              'Get your favorite shoes',
              style: TextStyle(
                color: const Color(0xFF28161c),
                fontSize: 20,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 40),

            // button to navigate to home page
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/home');
              },
              child: Container(
                decoration: BoxDecoration(
                  color: const Color(0xFF28161c),
                  borderRadius: BorderRadius.circular(10),
                ),
                width: 300,
                padding: const EdgeInsets.all(15),
                child: Center(
                  child: Text(
                    'Get Started',
                    style: TextStyle(
                      color: const Color(0xFFb9b9b9),
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
