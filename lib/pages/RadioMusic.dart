import 'package:flutter/material.dart';
import '../services/radioservices.dart';

class RadioMusic extends StatefulWidget {
  const RadioMusic({Key? key}) : super(key: key);

  @override
  State<RadioMusic> createState() => _RadioMusicState();
}

class _RadioMusicState extends State<RadioMusic> {
  List<RadioServices> radioList = [
    RadioServices(
        name: 'RTHK Radio 1',
        image: 'assets/rthk1.png',
        frequency: 'FM 92.6 MHz - 94.4 MHz'),
    RadioServices(
        name: 'RTHK Radio 2',
        image: 'assets/rthk2.jpg',
        frequency: 'FM 94.8 MHz - 96.9 MHz'),
    RadioServices(
        name: 'Metro Info',
        image: 'assets/metroinfo.jpg',
        frequency: 'FM 99.7 MHz - 102.1 MHz'),
    RadioServices(
        name: 'Citizen\'s Radio',
        image: 'assets/citizens-radio.jpg',
        frequency: 'FM 102.8 MHz'),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Title
          const Padding(
            padding: EdgeInsets.fromLTRB(0.0, 8.0, 0.0, 3.0),
            child: Text(
              'Radio',
              textAlign: TextAlign.start,
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(0.0),
          ),

          // List of Radio Stations
          ListView.builder(
            shrinkWrap: true,
            itemCount: radioList.length,
            itemBuilder: (context, index) {
              return Card(
                margin: EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 5.0),
                color: Colors.grey[100],
                child: ListTile(
                  leading: Image.asset(radioList[index].image, width: 45.0),
                  title: Text(radioList[index].name),
                  subtitle: Text(radioList[index].frequency),
                  trailing: Icon(Icons.play_circle),
                  onTap: () {},
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
