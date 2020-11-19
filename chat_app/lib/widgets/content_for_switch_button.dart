import 'package:flutter/material.dart';

class Content extends StatefulWidget {
  final String value;
  Color colorVal;
  Content({this.value,this.colorVal});

  @override
  _ContentState createState() => _ContentState();
}

class _ContentState extends State<Content> {

  @override
  Widget build(BuildContext context) {
      return Container(
        margin: EdgeInsets.all(4),
          child: Text(
          widget.value,
          ),
      );
  }
}
