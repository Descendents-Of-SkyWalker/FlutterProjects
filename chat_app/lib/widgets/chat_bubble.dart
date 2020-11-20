import 'package:flutter/material.dart';

class ChatBubble extends StatelessWidget {

  int index;
  ChatBubble({this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              Container(
                child: Text(
                  'hello',
                ),
                padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

