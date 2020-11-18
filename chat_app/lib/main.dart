import 'package:chat_app/dataclasses/chats.dart';
import 'package:chat_app/widgets/login_signup_container.dart';
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
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text("test"),
        centerTitle: true,
      ),
      body: Containment2(),
    );
  }
}


