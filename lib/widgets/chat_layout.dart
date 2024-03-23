import 'package:flutter/material.dart';
import 'package:whatsapp/info.dart';
import 'package:whatsapp/widgets/my_message_card.dart';
import 'package:whatsapp/widgets/sender_message.dart';

class ChatList extends StatelessWidget {
  const ChatList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: messages.length,
      itemBuilder: (context, index) {
        if (messages[index]['isMe'] == true) {
          return MyMessage(
              date: messages[index]['time'].toString(),
              message: messages[index]['text'].toString());
        }
        return SenderMessage(
            date: messages[index]['time'].toString(),
            message: messages[index]['text'].toString());
      },
    );
  }
}
