import 'dart:async';

import 'package:flutter/material.dart';
import 'package:myapp/splashscreen4.dart';

class SplashScreen3 extends StatefulWidget {
  const SplashScreen3({super.key});

  @override
  State<SplashScreen3> createState() => _SplashScreen3State();
}

class _SplashScreen3State extends State<SplashScreen3> {
   void initState() {
    super.initState();

    // Delay for 2 seconds and start changing the background color
    Timer(Duration(seconds: 1), () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => SplashScreen4()));
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