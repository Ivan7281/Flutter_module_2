import 'package:flutter/material.dart';
import 'package:flutter_application_2/models/card_phone.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  MainAppState createState() => MainAppState();
}

class MainAppState extends State<MainApp> {
  int _currentIndex = 0;
  final List<Map<String, String>> _cards = [
    {
      'imagePath': 'images/4027849125.jpg',
      'title': 'Samsung',
      'description': 'This is Samsung.',
    },
    {
      'imagePath': 'images/MT233.jpeg',
      'title': 'Apple',
      'description': 'This is Apple.',
    },
    {
      'imagePath': 'images/all-p50.png',
      'title': 'Huawei',
      'description': 'This is Huawei.',
    },
    {
      'imagePath': 'images/c100.jpg',
      'title': 'Nokia',
      'description': 'This is Nokia.',
    },
  ];

  void _nextCard() {
    setState(() {
      _currentIndex = (_currentIndex + 1) % _cards.length;
    });
  }

  void _previousCard() {
    setState(() {
      _currentIndex = (_currentIndex - 1 + _cards.length) % _cards.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('My Stateful Widget')),
          backgroundColor: Colors.blue,
        ),
        backgroundColor: Colors.green[200],
        body: Column(
          children: [
            Expanded(
              child: CardWidget(
                imagePath: _cards[_currentIndex]['imagePath']!,
                title: _cards[_currentIndex]['title']!,
                description: _cards[_currentIndex]['description']!,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: _previousCard,
                  child: const Text('Previous'),
                ),
                ElevatedButton(
                  onPressed: _nextCard,
                  child: const Text('Next'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
