import 'package:flutter/material.dart';

import '../searchBox.dart';

void main() {
  runApp(new MaterialApp(home: Search()));
}

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: InkWell(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Center(
          child: Container(
            margin: EdgeInsets.only(
              left: w / 35,
              right: w / 35,
            ),
            child: SearchBar(
                buttonStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontFamily: 'Gilroy-ExtraBold',
                    fontWeight: FontWeight.w500),
                hintText: 'Search',
                icon: Icons.cancel,
                onSubmitted: (value) {
                  print(value);
                },
                radius: 10.5,
                title: "heel",
                bgcolor: Color(0xFF905BE0),
                height: MediaQuery.of(context).size.height,
                iconColor: Colors.white),
          ),
        ),
      ),
    );
  }
}
