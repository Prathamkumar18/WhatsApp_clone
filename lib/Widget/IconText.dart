// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IconText extends StatelessWidget {
  final String s1;
  final String s2;
  final String s3;
  final int flag;
  final int greenBorder;
  final int incomingFlag;
  const IconText({
    Key? key,
    required this.s1,
    required this.s2,
    required this.s3,
    required this.flag,
    required this.greenBorder,
    required this.incomingFlag,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {},
        child: Container(
            margin: EdgeInsets.all(3),
            height: (flag != 4) ? 70 : 90,
            child: Row(children: [
              Container(
                padding: EdgeInsets.all(2),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(
                        color: (greenBorder == 0) ? Colors.grey : Colors.green,
                        width: 1.5)),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(40),
                  child: Image.asset(
                    "$s1",
                    height: (flag != 4) ? 50 : 65,
                    width: (flag != 4) ? 50 : 65,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                width: 25,
              ),
              Container(
                width: 180,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: (flag == 4) ? 20 : 10,
                      ),
                      Text(
                        "$s2",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: (flag != 4) ? 18 : 23,
                            fontWeight: (flag != 4)
                                ? FontWeight.bold
                                : FontWeight.w400),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          if (incomingFlag == 1)
                            Icon(
                              Icons.north_east_outlined,
                              color: Colors.green,
                            ),
                          Text(
                            "$s3",
                            style: TextStyle(
                                color: Color.fromARGB(255, 104, 104, 104),
                                fontSize: 14),
                          ),
                        ],
                      ),
                    ]),
              ),
              SizedBox(
                width: (flag != 4) ? 60 : 70,
              ),
              if (flag == 1)
                PopupMenuButton(
                    icon: Icon(
                      Icons.more_horiz,
                      color: Color.fromARGB(255, 30, 137, 34),
                    ),
                    elevation: 10,
                    iconSize: 28,
                    itemBuilder: (context) => [
                          PopupMenuItem(
                            padding: EdgeInsets.all(19),
                            value: 1,
                            child: Text(
                              "Remove Status",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w400),
                            ),
                          ),
                          PopupMenuItem(
                            value: 2,
                            child: Text(
                              "Views",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w400),
                            ),
                          ),
                        ]),
              if (flag == 2) Icon(Icons.call, color: Colors.green),
              if (flag == 3)
                Icon(
                  Icons.videocam,
                  color: Colors.green,
                ),
              if (flag == 4) Icon(CupertinoIcons.qrcode, color: Colors.green)
            ])));
  }
}
