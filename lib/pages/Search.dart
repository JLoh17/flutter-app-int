import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  TextEditingController _queryValue = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 42,
      margin: const EdgeInsets.fromLTRB(16, 16, 16, 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
        border: Border.all(color: Colors.black26),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: TextField(
        controller: _queryValue,
        decoration: InputDecoration(
          icon: GestureDetector(
              child: Icon(Icons.close, color: Colors.black26),
              onTap: () {
                var _search = _queryValue.clear();
              }),
          suffixIcon: GestureDetector(
            child: Icon(Icons.search, color: Colors.black26),
            onTap: () {
              var _search = _queryValue.text;
              print('Query ${_search}');
            },
          ),
          hintText: "Search song here...",
          border: InputBorder.none,
        ),
      ),
    );
  }
}
