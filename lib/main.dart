import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Pages/homePage.dart';

void main() {
  runApp(MyApp()); 
}

ThemeData _baseTheme = ThemeData(
  fontFamily: "Roboto",
  canvasColor: Colors.transparent,
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: _baseTheme,
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
