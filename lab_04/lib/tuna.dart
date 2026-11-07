// Lab Exercise 4.1, Slide 93: Detail screen for the Box of Fries
import 'package:flutter/material.dart';

class TunaScreen extends StatelessWidget {
  const TunaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
        title: const Text('Tuna'),
      ),
      body: Center(
        child: Column(
          children: [
            Image.asset('assets/images/Fish_Tuna.png', width: 200),
            const Text(
              'Tuna is a saltwater fish that is widely consumed for its rich flavor and high protein content.',
            ),
          ],
        ),
      ),
    );
  }
}
