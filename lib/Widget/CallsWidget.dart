import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Widget/IconText.dart';

class CallsWidget extends StatelessWidget {
  CallsWidget({super.key});
  List<String> names = [
    "Buttler",
    "Pollard",
    "Curran",
    "Lanning",
    "Kaur",
    "Mark wood",
    "Mandhana",
    "Southee",
    "Gardner",
    "Maxwell"
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        padding: EdgeInsets.all(5),
        child: Column(children: [
          for (int i = 2; i <= 8; i++)
            IconText(
                s1: "Assets/prof$i.jpeg",
                s2: "${names.elementAt(i)}",
                s3: "(1)Today, 5:3$i pm",
                flag: (i <= 5) ? 2 : 3,
                greenBorder: 0,
                incomingFlag: 1)
        ]));
  }
}
