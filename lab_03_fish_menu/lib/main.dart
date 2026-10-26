import 'package:flutter/material.dart';

void main() {
  runApp(const FishMenuApp());
}

class FishMenuApp extends StatelessWidget {
  const FishMenuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MenuScreen(),
    );
  }
}

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fish Menu'),
        backgroundColor: Colors.grey,
      ),
      body: const SafeArea(
        child: Column(
          children: [
            MenuCard('Fish_Tuna.png', 'Tuna Fish'),
            MenuCard('Fish_Carp.png', 'Carp Fish'),
            MenuCard('Fish_Tilapia.png', 'Tilapia Fish'),
          ],
        ),
      ),
    );
  }
}

class MenuCard extends StatelessWidget {
  const MenuCard(this.file, this.name, {super.key});

  final String file;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      color: Colors.cyan.shade700,
      margin: const EdgeInsets.all(12),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            Image.asset(
              'assets/images/$file',
              width: 100,
              height: 100,
              fit: BoxFit.contain,
            ),
            const SizedBox(width: 20),
            Text(
              name,
              style: const TextStyle(
                fontSize: 28,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
