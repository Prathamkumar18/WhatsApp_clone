// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:whatsapp_clone/Widget/IconText.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});
  @override
  Widget build(BuildContext context) {
    Color cc = Color(0xFF075E55);
    List<SettingsListItem> list = [
      SettingsListItem(
          icon: Icon(Icons.key),
          title: "Account",
          subtitle: "Security notifications, change number"),
      SettingsListItem(
          icon: Icon(Icons.lock),
          title: "Privacy",
          subtitle: "Block contacts, disappearing messages"),
      SettingsListItem(
          icon: Icon(CupertinoIcons.person_circle_fill),
          title: "Avatar",
          subtitle: "Create, eidt, profile photo"),
      SettingsListItem(
          icon: Icon(Icons.chat_sharp),
          title: "Chats",
          subtitle: "Theme, wallpaper, chat history"),
      SettingsListItem(
          icon: Icon(Icons.notifications),
          title: "Notification",
          subtitle: "Message, group & call tones"),
      SettingsListItem(
          icon: Icon(Icons.pie_chart_outline),
          title: "Storage and data",
          subtitle: "Network usage, auto-download"),
      SettingsListItem(
          icon: Icon(Icons.language_sharp),
          title: "App language",
          subtitle: "English(phone's language)"),
      SettingsListItem(
          icon: Icon(Icons.help_outline_rounded),
          title: "Help",
          subtitle: "Help center, contact us, privacy policy"),
      SettingsListItem(
          icon: Icon(Icons.person_2_outlined),
          title: "Invite a friend",
          subtitle: ""),
    ];
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: cc,
        title: Text("Settings",
            style: TextStyle(fontWeight: FontWeight.w400, fontSize: 19)),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              IconText(
                  s1: "Assets/dpwhats.jpeg",
                  s2: "Whatseey",
                  s3: "Can't talk,WhatsApp only",
                  flag: 4,
                  greenBorder: 0,
                  incomingFlag: 0),
              Divider(
                thickness: 0.1,
                color: Colors.grey,
              ),
              ListView.builder(
                  shrinkWrap: true,
                  itemCount: 9,
                  itemBuilder: ((context, index) {
                    return ListTile(
                      onTap: () {},
                      title: Text(
                        list.elementAt(index).title,
                        style: TextStyle(color: Colors.black, fontSize: 17),
                      ),
                      subtitle: Text(
                        list.elementAt(index).subtitle,
                        style: TextStyle(color: Colors.grey, fontSize: 12),
                      ),
                      leading: list.elementAt(index).icon,
                    );
                  })),
              Container(
                height: 100,
                child: Column(
                  children: [
                    Text(
                      "from",
                      style: TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                    Text(
                      "♾️ Dummy",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SettingsListItem {
  final Icon icon;
  final String title;
  final String subtitle;
  SettingsListItem({
    required this.icon,
    required this.title,
    required this.subtitle,
  });
}
