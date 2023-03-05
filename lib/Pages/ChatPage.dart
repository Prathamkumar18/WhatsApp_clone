// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:whatsapp_clone/Widget/ChatBottomBar.dart';
import 'package:whatsapp_clone/Widget/ChatSample.dart';

class ChatPage extends StatelessWidget {
  int i;
  ChatPage({
    Key? key,
    required this.i,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Color cc = Color(0xFF075E55);
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

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: AppBar(
          elevation: 0,
          actions: [
            Icon(
              Icons.videocam,
              color: Colors.white,
            ),
            SizedBox(
              width: 20,
            ),
            Icon(
              Icons.call,
              color: Colors.white,
            ),
            SizedBox(
              width: 8,
            ),
            PopupMenuButton(
                color: Colors.white,
                onSelected: (selected) {},
                elevation: 10,
                iconSize: 28,
                itemBuilder: (context) => [
                      PopupMenuItem(
                        padding: EdgeInsets.all(19),
                        value: 1,
                        child: Text(
                          "View Contacts",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w400),
                        ),
                      ),
                      PopupMenuItem(
                        value: 2,
                        child: Text(
                          "Media, links, and docs",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w400),
                        ),
                      ),
                      PopupMenuItem(
                        value: 3,
                        child: Text(
                          "Search",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w400),
                        ),
                      ),
                      PopupMenuItem(
                        value: 4,
                        child: Text(
                          "Mute notifications",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w400),
                        ),
                      ),
                      PopupMenuItem(
                        value: 5,
                        child: Text(
                          "Disappearing messages",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w400),
                        ),
                      ),
                      PopupMenuItem(
                        value: 6,
                        child: Text(
                          "Wallpaper",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w400),
                        ),
                      ),
                    ]),
          ],
          titleSpacing: BorderSide.strokeAlignInside,
          title: Container(
            child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(40),
                child: Image.asset(
                  "Assets/prof$i.jpeg",
                  height: 42,
                  width: 42,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "${names.elementAt(i-1)}",
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Text(
                    "Online",
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 12),
                  ),
                ],
              )
            ]),
          ),
          backgroundColor: cc,
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("Assets/whatsback1.png"), fit: BoxFit.cover),
        ),
        child: SingleChildScrollView(
          child: Column(children: [
            Container(
              margin: EdgeInsets.all(5),
              padding: EdgeInsets.all(10),
              width: 280,
              height: 80,
              decoration: BoxDecoration(
                  color: Color(0xFFFFF3C2),
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.5), blurRadius: 8)
                  ]),
              child: Text(
                "🔒 Messages and calls are end-to-end encrypted, No one outside of this chat can read or listen.Tap to learn more.",
                style: TextStyle(fontSize: 15),
                textAlign: TextAlign.left,
              ),
            ),
            ChatSample(),
            ChatSample(),
            ChatSample(),
            ChatSample(),
            ChatSample(),
            ChatSample(),
            ChatSample(),
            ChatSample(),
          ]),
        ),
      ),
      bottomSheet: ChatBottomBar(),
    );
  }
}
