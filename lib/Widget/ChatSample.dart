import 'package:custom_clippers/custom_clippers.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'package:flutter/material.dart';

class ChatSample extends StatelessWidget {
  const ChatSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(left: 10, right: 90, top: 20),
          alignment: Alignment.centerLeft,
          child: ClipPath(
            clipper: UpperNipMessageClipperTwo(MessageType.receive),
            child: Container(
              color: Colors.white,
              padding: EdgeInsets.all(10.0),
              child: Text("   Hi, Developer, How are you?"),
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 70, right: 10, top: 10),
          alignment: Alignment.centerRight,
          child: ClipPath(
            clipper: UpperNipMessageClipperTwo(MessageType.send),
            child: Container(
              color: Color.fromARGB(255, 215, 245, 184),
              padding: EdgeInsets.all(10.0),
              child: Text(
                  "Hi, Programmer, i am fine and well. thanks for asking and what about you."),
            ),
          ),
        ),
      ],
    );
  }
}
