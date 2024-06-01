import 'package:flutter/material.dart';

class TileWidget extends StatelessWidget {
  const TileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        height: 290,
        width: 300,
        margin: const EdgeInsets.all(5),
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Image.network(
                'https://img.freepik.com/free-psd/beautiful-cat-portrait-isolated_23-2150186143.jpg',
                fit: BoxFit.fill,
              ),
            ),
            const SizedBox(height: 8), // Add some spacing
            const Text(
              'Hello World',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
