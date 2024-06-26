// ignore: file_names
import 'package:flutter/material.dart';
import 'package:whatsapp/color.dart';
import 'package:whatsapp/widgets/chat_layout.dart';
import 'package:whatsapp/widgets/contacts.dart';
import 'package:whatsapp/widgets/web_Appbar.dart';
import 'package:whatsapp/widgets/web_profile.dart';
import 'package:whatsapp/widgets/web_searchbar.dart';

class WebScreenLayout extends StatelessWidget {
  const WebScreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
      children: [
        const Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [WebProfileBar(), WebSerachBar(), Contactlist()],
            ),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width * 0.75,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/backgroundImage.png'),
                  fit: BoxFit.cover)),
          child: Column(
            children: [
              const WebAppBar(),
              const Expanded(child: ChatList()),
              Container(
                height: MediaQuery.of(context).size.height * 0.07,
                padding: const EdgeInsets.all(10),
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
                    padding: const EdgeInsets.only(left: 10, right: 15),
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
        ),
      ],
    ));
  }
}
