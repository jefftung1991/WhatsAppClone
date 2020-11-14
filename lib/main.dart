import 'package:flutter/material.dart';
import 'package:testing/chatRoom.dart';
import 'package:testing/components/chattile.dart';

import 'components/storybtn.dart';
import 'constant.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Whatsapp(),
    );
  }
}

class Whatsapp extends StatefulWidget {
  @override
  _WhatsappState createState() => _WhatsappState();
}

class _WhatsappState extends State<Whatsapp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      appBar: AppBar(
        elevation: 0.0,
        title: Text("WhatsApp Clone"),
        backgroundColor: mainColor,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_horiz),
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            height: 100.0,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 12.0,
                vertical: 8.0,
              ),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  storyButton(imageUrl[0], userName[0]),
                  storyButton(imageUrl[1], userName[1]),
                  storyButton(imageUrl[2], userName[2]),
                  storyButton(imageUrl[3], userName[3]),
                  storyButton(imageUrl[4], userName[4]),
                  storyButton(imageUrl[5], userName[5]),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: containerRadius, topRight: containerRadius),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 8.0, horizontal: 8.0),
                  child: ListView(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Chatroom()),
                          );
                        },
                        child: chatTile(imageUrl[0], userName[0], "msg", "9AM",
                            true, "How's your day bro"),
                      ),
                      chatTile(imageUrl[1], userName[1], "msg", "9AM", false,
                          "Hi i miss u"),
                      chatTile(imageUrl[2], userName[2], "msg", "9AM", false,
                          "Can you please borrow me some money?"),
                      chatTile(imageUrl[3], userName[3], "msg", "9AM", true,
                          "Congrats on your lucky draw!"),
                      chatTile(imageUrl[4], userName[4], "msg", "9AM", false,
                          "No worries bro everything will be good"),
                      chatTile(imageUrl[5], userName[5], "msg", "9AM", false,
                          "So you created this app for?z"),
                    ],
                  ),
                )),
          )
        ],
      ),
    );
  }
}
