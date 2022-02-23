import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

String query = '';
Map? data;
List listdata = [];

Future getQuery(String _search) async {
  // Query itunes API
  try {
    final response = await http.get(
      Uri.parse('https://itunes.apple.com/search?term=$_search&limit=15'),
    );
    if (response.statusCode == 200) {
      data = jsonDecode(response.body);
      listdata = data!['results'];
      // print('this is data: $data');
      // print('this is listdata: $listdata');
    }
  } catch (e) {
    print('caught error: $e');
  }
}

@override
class _SearchState extends State<Search> {
  TextEditingController _queryValue = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 42,
          margin: const EdgeInsets.fromLTRB(16, 16, 16, 16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.white,
            border: Border.all(color: Colors.black26),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: TextField(
            autofocus: true,
            controller: _queryValue,
            decoration: InputDecoration(
              // Clear search field
              icon: GestureDetector(
                  child: Icon(Icons.close, color: Colors.black26),
                  onTap: () {
                    var _search = _queryValue.clear();
                  }),

              // Click search field
              suffixIcon: GestureDetector(
                child: const Icon(Icons.search, color: Colors.black26),
                onTap: () async {
                  var _search = _queryValue.text;
                  // print('Query ${_search}');
                  await getQuery(_search);
                  setState(() {});
                  _queryValue.clear();
                },
              ),
              hintText: "Search here...",
              border: InputBorder.none,
            ),
          ),
        ),

        // Shows list of songs when search button is clicked
        Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 0.0),
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Card(
                      color: Colors.grey[100],
                      child: ListTile(
                        leading: Image.network(listdata[index]['artworkUrl60'],
                            width: 45.0),
                        title: Text(listdata[index]['collectionName'],
                            style: const TextStyle(
                                fontSize: 16.0,
                                overflow: TextOverflow.ellipsis)),
                      ),
                    ),
                  ],
                );
              },
              itemCount: listdata.length,
            ),
          ),
        )
      ],
    );
  }
}
