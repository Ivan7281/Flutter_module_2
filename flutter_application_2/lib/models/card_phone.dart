import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  final String imagePath;
  final String title;
  final String description;

  const CardWidget({super.key, 
    required this.imagePath,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.fromLTRB(10, 20, 10, 20),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(50.0),
            child: Image(
              image: AssetImage(imagePath),
              height: 200.0,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 35.0,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Text(
              description,
              style: const TextStyle(fontSize: 16.0),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
