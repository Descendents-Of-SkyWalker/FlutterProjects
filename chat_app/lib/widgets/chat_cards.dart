import 'package:flutter/material.dart';
import 'package:chat_app/dataclasses/chats.dart';

class ChatsCard extends StatelessWidget {

  final Chats chat;
  ChatsCard({this.chat});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(15, 15, 15, 0),
      child: Padding(
        padding: EdgeInsets.all(12),
        child: Row(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage(chat.imageURL),
              radius: 30,
            ),
            SizedBox(width: 8,),
            Column(
              children: [
                Text(
                  chat.name,
                ),
                SizedBox(height: 8,),
                Text(
                  chat.status,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
