import 'dart:async';

import 'package:flutter/material.dart';
import 'package:myapp/Home.dart';



class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Color _backgroundColor = Colors.red;

  @override
  void initState() {
    super.initState();

    // Delay for 2 seconds and start changing the background color
    Timer(Duration(seconds: 2), () {
      _changeBackgroundColor();
    });
  }

  void _changeBackgroundColor() {
    Timer.periodic(Duration(seconds: 2), (timer) {
      if (_backgroundColor == Colors.red) {
        setState(() {
          _backgroundColor = Colors.green;
        });
      } else if (_backgroundColor == Colors.green) {
        setState(() {
          _backgroundColor = Colors.blue;
        });
      } else if (_backgroundColor == Colors.blue) {
        setState(() {
          _backgroundColor = Colors.yellow;
        });
      } else if (_backgroundColor == Colors.yellow) {
        setState(() {
          _backgroundColor = Colors.black;
        });

        // Navigate to the main screen when the color is black
        timer.cancel(); // Stop the timer
        _navigateToMainScreen();
      }
    });
  }

  void _navigateToMainScreen() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => Home()),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  _backgroundColor,
 // Set the background color for the splash screen
      body: 
      Center(
        child:
        
         Container(
          width: double.infinity,
          height: double.infinity,
        child:   Column(
        children: [
          SizedBox(height: 275,),
           Center(
          child: Image.asset("assets/logo.png"),
          
        ),
Center(
  child: Text("Color-Changer",
  
  style: TextStyle(
    color: Colors.white,
    fontSize: 30,
    fontWeight: FontWeight.w200,
  )
  ,),
)
        ],
      ),
        ),
      ),
     
    );
  }
}