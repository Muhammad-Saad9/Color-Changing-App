import 'dart:async';

import 'package:flutter/material.dart';
import 'package:myapp/Home.dart';

class SplashScreen4 extends StatefulWidget {
  const SplashScreen4({super.key});

  @override
  State<SplashScreen4> createState() => _SplashScreen4State();
}

class _SplashScreen4State extends State<SplashScreen4> {
   void initState() {
    super.initState();

    // Delay for 2 seconds and start changing the background color
    Timer(Duration(seconds: 1), () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Column(children: [
        Center(
          child: Container(
            child: Center(
              child: Column(
                children: [
                  Image.network('https://static.thenounproject.com/png/5766108-200.png'),
                  Text("Color-Changer"),
                ],
              ),
            ),
          ),
        )
      ]),
    );
  }
}