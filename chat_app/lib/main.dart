import 'package:chat_app/dataclasses/chats.dart';
import 'package:flutter/material.dart';
import 'widgets/custom_input.dart';
import 'widgets/chat_cards.dart';
void main() => runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TestClass(),
    )
);



class TestClass extends StatefulWidget {
  @override
  _TestClassState createState() => _TestClassState();
}

class _TestClassState extends State<TestClass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("test"),
      ),
      body: Column(
        children: [
          SizedBox(),
          TextBox(value: "bleh",flag: true,),
        ],
      ),
    );
  }
}


