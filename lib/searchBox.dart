import 'package:flutter/material.dart';

class SearchBar extends StatefulWidget {
  SearchBar(
      {Key key,
      this.title,
      this.buttonStyle,
      this.onSubmitted,
      this.radius,
      this.hintText,
      this.icon,
      this.bgcolor,
      this.height,
      this.iconColor})
      : super(key: key);
  final TextStyle buttonStyle;
  final String title;
  final Function onSubmitted;
  final radius;
  final String hintText;
  final IconData icon;
  final Color bgcolor;
  final height;
  final Color iconColor;

  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  FocusNode focusNode;
  bool clear = true;
  TextEditingController search = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.height / 15,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(widget.radius.toDouble()),
        color: widget.bgcolor,
      ),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: TextField(
                focusNode: focusNode,
                controller: search,
                style: widget.buttonStyle,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  errorBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                  hintText: widget.hintText,
                  hintStyle: widget.buttonStyle,
                  prefixText: '  ',
                ),
                onTap: () {
                  setState(() {
                    clear = true;
                  });
                },
                onSubmitted: (v) => widget.onSubmitted(v)),
          ),
          clear
              ? IconButton(
                  icon: Icon(widget.icon,
                      color: clear ? widget.iconColor : Colors.black),
                  onPressed: () {
                    search.clear();
                    setState(() {
                      clear = false;
                    });
                  },
                )
              : Icon(
                  Icons.ac_unit,
                  size: .10,
                )
        ],
      ),
    );
  }
}
