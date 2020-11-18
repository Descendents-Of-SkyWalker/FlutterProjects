import 'package:flutter/material.dart';

class TextBox extends StatelessWidget {
  final String value;
  final bool flag;
  const TextBox({this.value,this.flag});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10,top: 10,right: 20),
      child: TextFormField(
        obscureText: flag,
        decoration: InputDecoration(
          focusedBorder:  OutlineInputBorder(
              borderSide: BorderSide(
                  color: Colors.redAccent
              )
          ),
          enabledBorder:  OutlineInputBorder(
              borderSide: BorderSide(
                  color: Colors.redAccent
              )
          ),
          labelText: value,
          labelStyle: TextStyle(
            color: Colors.redAccent
          )
        ),
      )
    );
  }
}