import 'package:flutter/material.dart';
import 'package:whatsapp/color.dart';
import 'package:whatsapp/info.dart';
import 'package:whatsapp/widgets/chat_layout.dart';

class MobileChatScreen extends StatelessWidget {
  const MobileChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarColor,
        title: Text(
          info[0]['name'].toString(),
          style: const TextStyle(fontSize: 17),
        ),
        centerTitle: false,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.video_call_outlined,
              color: Colors.grey,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.call,
              color: Colors.grey,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.more_vert,
              color: Colors.grey,
            ),
          )
        ],
      ),
      body: Column(
        children: [
          const Expanded(child: ChatList()),
          Container(
            height: MediaQuery.of(context).size.height * 0.07,
            padding: const EdgeInsets.all(8),
            decoration: const BoxDecoration(
              color: chatBarMessage,
              border: Border(
                bottom: BorderSide(
                  color: dividerColor,
                ),
              ),
            ),
            child: Row(children: [
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.emoji_emotions_outlined,
                    color: Colors.grey,
                  )),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.attach_file_outlined,
                  color: Colors.grey,
                ),
              ),
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.only(left: 3, right: 10),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: 'Type your message',
                      fillColor: searchBarColor,
                      filled: true,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: const BorderSide(
                              width: 0, style: BorderStyle.none)),
                      contentPadding: const EdgeInsets.only(left: 20)),
                ),
              )),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.mic,
                  color: Colors.grey,
                ),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
