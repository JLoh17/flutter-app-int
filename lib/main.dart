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
              // shadows: [
              //   Shadow(
              //     offset: Offset(2.0, 2.0),
              //     blurRadius: 20.0,
              //     color: Colors.red,
              //   ),
              // ],
            ),
          ),
          backgroundColor: Colors.white,
        ),
        body: screens[currentIndexVar],
        bottomNavigationBar: BottomNavigationBar(
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

        // bottomNavigationBar: BottomAppBar(
        //   // color: Colors.red[200],
        //   child: Row(
        //     mainAxisAlignment: MainAxisAlignment.spaceAround,
        //     children: [
        //       Container(
        //         padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
        //         child: TextButton(
        //           onPressed: () => {},
        //           style: TextButton.styleFrom(
        //               primary: Color.fromRGBO(99, 99, 102, 1.0)),
        //           child: Column(
        //             mainAxisSize: MainAxisSize.min,
        //             children: [
        //               Icon(Icons.library_music_outlined),
        //               Text('Music'),
        //             ],
        //           ),
        //         ),
        //       ),
        //       Container(
        //         padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
        //         child: TextButton(
        //           onPressed: () => {},
        //           style: TextButton.styleFrom(
        //               primary: Color.fromRGBO(99, 99, 102, 1.0)),
        //           child: Column(
        //             mainAxisSize: MainAxisSize.min,
        //             children: [
        //               Icon(Icons.radio),
        //               Text('Radio'),
        //             ],
        //           ),
        //         ),
        //       ),
        //       Container(
        //         padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
        //         child: TextButton(
        //           onPressed: () => {},
        //           style: TextButton.styleFrom(
        //               primary: Color.fromRGBO(99, 99, 102, 1.0)),
        //           child: Column(
        //             mainAxisSize: MainAxisSize.min,
        //             children: [
        //               Icon(Icons.search),
        //               Text('Search'),
        //             ],
        //           ),
        //         ),
        //       ),
        //     ],
        //   ),
        // ),
      ),
    );
  }
}
