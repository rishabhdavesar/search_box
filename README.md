# Search Bar/Box UI 

Simple search box UI with clear text icon.
Highly customizable `search` bar.


| Android |
| ------------- |
| <img src="searchbar.gif" width="300" height="600">|



## Getting Started

Here's a simple example of `Search Bar`'s:

    import 'package:flutter/material.dart';
    import 'package:simple_textfield_search_bar/searchBox.dart';



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

## Parameters

Here's a list of all `SearchAppBar` parameters and what they do:

`height` : Height of the search bar.

`bgcolor` : Background Color of the search bar.

`radius` : Circular radius of the search bar.

`buttonStyle` : Text Style 

`hintText` : Hint Text

`icon` : Suffix Icon for Text field

`iconColor` : Suffix Icon Color for Text field

`onSubmitted` : onSubmitted Function 








