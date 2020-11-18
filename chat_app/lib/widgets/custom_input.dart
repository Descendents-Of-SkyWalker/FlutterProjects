import 'package:flutter/material.dart';

class TextBox extends StatefulWidget {
  final String value;
  final bool flag;

  TextBox({this.value,this.flag});
  @override
  _TextBoxState createState() => _TextBoxState();
}
class _TextBoxState extends State<TextBox> {
  FocusNode node;
  @override
  void initState() {
    super.initState();
    node=FocusNode();
  }
  @override
  void dispose() {
    node.dispose();
    super.dispose();
  }
  void RequestFocus(){
    setState(() {
      node.requestFocus();
    });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 10,top: 10,right: 20),
        child: TextFormField(
          focusNode: node,
          onTap: RequestFocus,
          obscureText: widget.flag,
          decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: node.hasFocus?Colors.redAccent:Colors.grey,
                )
              ),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: node.hasFocus?Colors.redAccent:Colors.grey,
                  )
              ),
              labelText: widget.value,
              labelStyle: TextStyle(
                color: Colors.redAccent,
              )
          ),
          cursorColor: Colors.redAccent[100],
          style: TextStyle(
            color: Colors.white,
          ),
        )
    );
  }
}