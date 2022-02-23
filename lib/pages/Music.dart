import 'package:flutter/material.dart';

class Music extends StatelessWidget {
  const Music({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.fromLTRB(0.0, 8.0, 0.0, 3.0),
            child: Text(
              'Music',
              textAlign: TextAlign.start,
              style: TextStyle(
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(0.0),
          ),
          Expanded(
            child: ListView(
              children: [
                Card(
                  margin: EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 5.0),
                  color: Colors.grey[100],
                  child: (ExpansionTile(
                    textColor: Colors.black,
                    iconColor: Colors.black,
                    backgroundColor: Colors.grey[100],
                    leading: Image.asset('assets/mcr.jpg'),
                    title: const Text('My Chemical Romance'),
                    subtitle: const Text('The Black Parade'),
                    trailing: const Icon(Icons.arrow_drop_down, size: 40.0),
                    children: [
                      ListTile(
                        leading: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Track 1'),
                          ],
                        ),
                        title: Text('The End.'),
                        trailing: Icon(Icons.play_circle),
                        onTap: () {},
                      ),
                      ListTile(
                        leading: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text('Track 2'),
                          ],
                        ),
                        title: const Text('Dead!'),
                        trailing: const Icon(Icons.play_circle),
                        onTap: () {},
                      ),
                      ListTile(
                        leading: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Track 3'),
                          ],
                        ),
                        title: Text('This is How I Disappear',
                            overflow: TextOverflow.ellipsis),
                        trailing: Icon(Icons.play_circle),
                        onTap: () {},
                      ),
                      ListTile(
                        leading: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Track 4'),
                          ],
                        ),
                        title: const Text('The Sharpest Lives'),
                        trailing: const Icon(Icons.play_circle),
                        onTap: () {},
                      ),
                    ],
                  )),
                ),
                Card(
                  margin: EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 5.0),
                  color: Colors.grey[100],
                  child: (ExpansionTile(
                    textColor: Colors.black,
                    iconColor: Colors.black,
                    backgroundColor: Colors.grey[100],
                    leading: Image.asset('assets/green-day.jpg'),
                    title: const Text('Green Day'),
                    subtitle: const Text('American Idiot'),
                    trailing: const Icon(Icons.arrow_drop_down, size: 40.0),
                    children: [
                      ListTile(
                        leading: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Track 1'),
                          ],
                        ),
                        title: Text('American Idiot'),
                        trailing: Icon(Icons.play_circle),
                        onTap: () {},
                      ),
                      ListTile(
                        leading: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Track 2'),
                          ],
                        ),
                        title: const Text('Jesus of Suburbia'),
                        trailing: const Icon(Icons.play_circle),
                        onTap: () {},
                      ),
                      ListTile(
                        leading: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Track 3'),
                          ],
                        ),
                        title: Text('Holiday', overflow: TextOverflow.ellipsis),
                        trailing: Icon(Icons.play_circle),
                        onTap: () {},
                      ),
                      ListTile(
                        leading: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Track 4'),
                          ],
                        ),
                        title: const Text(
                          'Boulevards of Broken Dreams',
                          overflow: TextOverflow.ellipsis,
                        ),
                        trailing: const Icon(Icons.play_circle),
                        onTap: () {},
                      ),
                    ],
                  )),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
