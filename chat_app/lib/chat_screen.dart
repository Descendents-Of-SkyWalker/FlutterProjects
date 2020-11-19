import 'package:chat_app/widgets/chat_bubble.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {

  final ScrollController listScrollController=new ScrollController();

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: ListView.builder(
        itemBuilder: (context,index) => ChatBubble(index: index),
        itemCount: 20,
        reverse: true,
        controller: listScrollController,
      ),
    );
  }
}
