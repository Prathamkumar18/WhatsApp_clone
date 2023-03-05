import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Widget/IconText.dart';

class StatusWidget extends StatelessWidget {
  StatusWidget({super.key});
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
        child: Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
      child: Column(children: [
        IconText(
            s1: "Assets/prof1.jpeg",
            s2: "My Status",
            s3: "Today, 12:30 am",
            flag: 1,
            greenBorder: 0,
            incomingFlag: 0),
        Align(
          alignment: Alignment.topLeft,
          child: Text(
            "  Recent updates",
            style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                color: Color.fromARGB(137, 2, 2, 2)),
          ),
        ),
        for (int i = 1; i <= 3; i++)
          IconText(
              s1: "Assets/status${i}.jpeg",
              s2: "${names.elementAt(i + 1)}",
              s3: "Today, 1:${40 + i} am",
              flag: 0,
              greenBorder: 1,
              incomingFlag: 0),
        Align(
          alignment: Alignment.topLeft,
          child: Text(
            "  Viewed updates",
            style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                color: Color.fromARGB(137, 2, 2, 2)),
          ),
        ),
        for (int i = 4; i <= 5; i++)
          IconText(
              s1: "Assets/status${i}.jpeg",
              s2: "${names.elementAt(i + 1)}",
              s3: "Today, 4:${20 + i} pm",
              flag: 0,
              greenBorder: 0,
              incomingFlag: 0),
      ]),
    ));
  }
}
