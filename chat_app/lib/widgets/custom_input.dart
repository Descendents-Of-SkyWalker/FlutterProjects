import 'package:flutter/material.dart';

class TextBox extends StatelessWidget {
  final String value;
  final bool flag;
  const TextBox({this.value,this.flag});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextFormField(
        decoration: InputDecoration(
          border: InputBorder.none,
        ),
      ),
    );
  }
}