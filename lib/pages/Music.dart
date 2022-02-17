import 'package:flutter/material.dart';

class Music extends StatelessWidget {
  const Music({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Card(
          child: (ExpansionTile(
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
                    Text('Track 2'),
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
      ],
    );
  }
}
