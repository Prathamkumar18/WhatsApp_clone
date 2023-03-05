import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';

class ChatBottomBar extends StatelessWidget {
  const ChatBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      child: Row(
        children: [
          Row(
            children: [
              Container(
                margin: EdgeInsets.all(6),
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Row(children: [
                  Icon(
                    Icons.emoji_emotions_outlined,
                    color: Color.fromARGB(255, 106, 105, 105),
                    size: 28,
                  ),
                  Container(
                    width: 180,
                    child: TextFormField(
                      decoration: InputDecoration(
                          hintText: " Message", border: InputBorder.none),
                    ),
                  ),
                  Icon(
                    Icons.attachment_rounded,
                    color: Color.fromARGB(255, 122, 122, 122),
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Icon(
                    Icons.currency_rupee_outlined,
                    color: Color.fromARGB(255, 106, 105, 105),
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Icon(
                    Icons.camera_alt,
                    color: Color.fromARGB(255, 122, 122, 122),
                  )
                ]),
              ),
            ],
          ),
          Container(
            height: 55,
            width: 55,
            decoration: BoxDecoration(
                color: Color(0xFF00887A),
                borderRadius: BorderRadius.circular(30)),
            child: Icon(
              Icons.mic,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
