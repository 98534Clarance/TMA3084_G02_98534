// Lab Exercise 4.1, Slide 89: Detail screen for the Vegetable Pizza
import 'package:flutter/material.dart';

class CarpScreen extends StatelessWidget {
  const CarpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
        title: const Text('Carp'),
      ),
      body: Center(
        child: Column(
          children: [
            Image.asset('assets/images/Fish_Carp.png', width: 200),
            const Text(
              'Carp is a freshwater fish commonly found in ponds and lakes.',
            ),
          ],
        ),
      ),
    );
  }
}
