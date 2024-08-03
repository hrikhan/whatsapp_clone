import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/splash.dart';

void main() {
  runApp(const myApp());
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "flutter app",
      theme: ThemeData(primarySwatch: Colors.teal),
      home: splash(),
    );
  }
}
