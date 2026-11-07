// Lab Exercise 4.1, Slides 90 to 92: Menu screen with three cards
import 'package:flutter/material.dart';

const TextStyle itemStyle = TextStyle(
  color: Colors.white,
  fontWeight: FontWeight.bold,
);

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        foregroundColor: Colors.white,
        title: const Text('Fish Menu App'),
      ),
      body: Column(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, 'carp');
            },
            child: Card(
              color: Colors.orange,
              child: ListTile(
                leading: Image.asset('assets/images/Fish_Carp.png', width: 40),
                title: const Text('Carp', style: itemStyle),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, 'tilapia');
            },
            child: Card(
              color: Colors.orange,
              child: ListTile(
                leading: Image.asset(
                  'assets/images/Fish_Tilapia.png',
                  width: 40,
                ),
                title: const Text('Tilapia', style: itemStyle),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, 'tuna');
            },
            child: Card(
              color: Colors.orange,
              child: ListTile(
                leading: Image.asset('assets/images/Fish_Tuna.png', width: 40),
                title: const Text('Tuna', style: itemStyle),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
