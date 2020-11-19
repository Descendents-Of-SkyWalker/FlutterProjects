import 'package:chat_app/dataclasses/chats.dart';
import 'package:chat_app/widgets/chat_cards.dart';
import 'package:flutter/material.dart';

class ChatsPage extends StatefulWidget {
  @override
  _ChatsPageState createState() => _ChatsPageState();
}

class _ChatsPageState extends State<ChatsPage> {

  List<Chats> chatList=[
    Chats(name: 'Rajvi', imageURL: 'https://images.unsplash.com/photo-1455582916367-25f75bfc6710?ixlib=rb-1.2.1&auto=format&fit=crop&w=755&q=80', status: 'dead'),
    Chats(name: 'Rajvi', imageURL: 'https://images.unsplash.com/photo-1455582916367-25f75bfc6710?ixlib=rb-1.2.1&auto=format&fit=crop&w=755&q=80', status: 'dead'),
    Chats(name: 'Rajvi', imageURL: 'https://images.unsplash.com/photo-1455582916367-25f75bfc6710?ixlib=rb-1.2.1&auto=format&fit=crop&w=755&q=80', status: 'dead')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: chatList.length,
              itemBuilder: (BuildContext context, int i)
              {
                return ChatsCard(chat: chatList[i]);
              },
            ),
          )
        ],
      ),
    );
  }
}
