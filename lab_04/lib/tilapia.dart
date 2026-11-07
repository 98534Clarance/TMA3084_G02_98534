// Lab Exercise 4.1, Slide 93: Detail screen for the Cheese Pizza
import 'package:flutter/material.dart';

class TilapiaScreen extends StatelessWidget {
  const TilapiaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
        title: const Text('Tilapia'),
      ),
      body: Center(
        child: Column(
          children: [
            Image.asset('assets/images/Fish_Tilapia.png', width: 200),
            const Text(
              'Tilapia is a freshwater fish that is widely consumed for its mild flavor and versatility in cooking.',
            ),
          ],
        ),
      ),
    );
  }
}
