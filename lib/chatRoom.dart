import 'package:flutter/material.dart';
import 'package:testing/constant.dart';

class Chatroom extends StatefulWidget {
  @override
  _ChatroomState createState() => _ChatroomState();
}

class _ChatroomState extends State<Chatroom> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello"),
        elevation: 0.0,
        backgroundColor: mainColor,
      ),
    );
  }
}
