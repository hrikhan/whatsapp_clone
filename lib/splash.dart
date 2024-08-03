import 'dart:async';

import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/homeScreen.dart';

class splash extends StatefulWidget {
  const splash({super.key});

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  @override
  void initState() {
    // TODO: implement initState

    Timer(Duration(seconds: 4), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => homescreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
          child: Text(
        "Whatsapp",
        style: TextStyle(fontSize: 30, color: Colors.teal),
      )),
    );
  }
}
