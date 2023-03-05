import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Pages/ChatPage.dart';

class ChatsWidget extends StatelessWidget {
  ChatsWidget({super.key});
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
        color: Colors.white,
        child: Column(
          children: [
            for (int i = 1; i <= 10; i++)
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ChatPage(i: i)));
                },
                child: Container(
                  color: Colors.white,
                  margin: EdgeInsets.all(5),
                  height: 70,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(40),
                        child: Image.asset(
                          "Assets/prof${i}.jpeg",
                          height: 50,
                          width: 50,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "${names.elementAt(i - 1)}",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w500),
                          ),
                          Text(
                            "Hi Developer $i,how are you?",
                            style: TextStyle(
                                color: Color.fromARGB(255, 104, 104, 104),
                                fontSize: 14),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 50,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "12:38 AM",
                            style: TextStyle(
                                color: Color.fromARGB(255, 19, 156, 40),
                                fontSize: 14),
                          ),
                          Container(
                            height: 20,
                            width: 20,
                            child: Center(
                                child: Text(
                              "1",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            )),
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 28, 185, 52),
                                borderRadius: BorderRadius.circular(20)),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
