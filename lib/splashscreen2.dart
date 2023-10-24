import 'dart:async';

import 'package:flutter/material.dart';

import 'splashscreen3.dart';

class SplashScreen2 extends StatefulWidget {
  const SplashScreen2({super.key});

  @override
  State<SplashScreen2> createState() => _SplashScreen2State();
}

class _SplashScreen2State extends State<SplashScreen2> {
   void initState() {
    super.initState();

    // Delay for 2 seconds and start changing the background color
    Timer(Duration(seconds: 1), () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => SplashScreen3()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
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