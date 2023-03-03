import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Pages/SettingPage.dart';
import 'package:whatsapp_clone/Widget/CallsWidget.dart';
import 'package:whatsapp_clone/Widget/StatusWidget.dart';
import 'package:whatsapp_clone/Widget/chatsWidget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  Color cc = Color(0xFF075E55);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      initialIndex: 1,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: Text(
            "WhatsApp",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          backgroundColor: cc,
          // ignore: prefer_const_literals_to_create_immutables
          actions: [
            Icon(
              CupertinoIcons.camera,
              size: 26,
              color: Colors.white,
            ),
            SizedBox(
              width: 20,
            ),
            Icon(
              CupertinoIcons.search,
              size: 26,
              color: Colors.white,
            ),
            SizedBox(
              width: 3,
            ),
            PopupMenuButton(
                onSelected: (selected) {
                  if (selected == 5)
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SettingPage()),
                    );
                },
                elevation: 10,
                iconSize: 28,
                itemBuilder: (context) => [
                      PopupMenuItem(
                        padding: EdgeInsets.all(19),
                        value: 1,
                        child: Text(
                          "New group",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w400),
                        ),
                      ),
                      PopupMenuItem(
                        value: 2,
                        child: Text(
                          "New broadcast",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w400),
                        ),
                      ),
                      PopupMenuItem(
                        value: 3,
                        child: Text(
                          "Linked devices",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w400),
                        ),
                      ),
                      PopupMenuItem(
                        value: 4,
                        child: Text(
                          "Starred messages",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w400),
                        ),
                      ),
                      PopupMenuItem(
                        value: 5,
                        child: Text(
                          "Payments",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w400),
                        ),
                      ),
                      PopupMenuItem(
                        value: 5,
                        child: Text(
                          "Settings",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w400),
                        ),
                      ),
                    ]),
          ],
        ),
        body: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              color: cc,
              child: TabBar(
                  indicatorWeight: 4,
                  isScrollable: true,
                  indicatorColor: Colors.white,
                  tabs: [
                    Container(
                      width: 30,
                      child: Tab(
                        icon: Icon(
                          Icons.group,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Container(
                      width: 80,
                      child: Tab(
                        child: Row(children: [
                          Text("CHATS"),
                          SizedBox(
                            width: 5,
                          ),
                          Container(
                            height: 20,
                            width: 20,
                            child: Center(
                                child: Text(
                              "10",
                              style: TextStyle(
                                color: cc,
                              ),
                            )),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)),
                          )
                        ]),
                      ),
                    ),
                    Container(
                      width: 80,
                      child: Tab(
                        child: Text("STATUS"),
                      ),
                    ),
                    Container(
                      width: 80,
                      child: Tab(
                        child: Text("CALLS"),
                      ),
                    ),
                  ]),
            ),
            Flexible(
                flex: 1,
                child: TabBarView(children: [
                  Container(
                    color: Colors.black,
                  ),
                  ChatsWidget(),
                  StatusWidget(),
                  CallsWidget(),
                ]))
          ],
        ),
      ),
    );
  }
}
