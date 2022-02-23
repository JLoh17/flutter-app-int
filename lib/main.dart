import 'package:flutter/material.dart';
import './pages/Music.dart';
import './pages/RadioMusic.dart';
import './pages/Search.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int currentIndexVar = 0;

  final screens = [
    Music(),
    RadioMusic(),
    Search(),
  ];

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Music Player',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.red,
            ),
          ),
          backgroundColor: Colors.white,
        ),
        // Accessing the difference screens depending on which one is selected
        body: screens[currentIndexVar],
        bottomNavigationBar: BottomNavigationBar(
          // currentIndex shows which screen is currently being shown
          currentIndex: currentIndexVar,
          onTap: (index) => setState(() => currentIndexVar = index),
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.library_music_outlined),
              label: 'Music',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.radio),
              label: 'Radio',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search',
            ),
          ],
        ),
      ),
    );
  }
}
