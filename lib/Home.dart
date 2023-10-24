import 'package:flutter/material.dart';


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Color _bxcolor = Colors.black;
  Color _appbar = Colors.black;
  Color _bgColor = Colors.white;
  
  void _changeColortored(){
    setState(() {
      _bxcolor = Colors.red;
    });
  }
  void _changeColortogreen(){
    setState(() {
      _bxcolor = Colors.greenAccent;
    });
  }
  void _changeColortoblue(){
    setState(() {
      _bxcolor = Colors.blueAccent;
    });
  }
  void _changeColortoDefault(){
    setState(() {
      _bxcolor = Colors.black;
    });
  }
  void _appbarchangeColortored(){
    setState(() {
      _appbar = Colors.red;
    });
  }
  void _appbarColortogreen(){
    setState(() {
      _appbar = Colors.greenAccent;
    });
  }
  void _appbarchangeColortoblue(){
    setState(() {
      _appbar = Colors.blueAccent;
    });
  }
  void _appbarchangeColortoDefault(){
    setState(() {
      _appbar = Colors.black;
    });
  }
  void _BgchangeColortoyellow(){
    setState(() {
      _bgColor = Colors.yellow;
    });
  }
  void _BgbarColortogreen(){
    setState(() {
      _bgColor = Colors.greenAccent;
    });
  }
  void _BgbarchangeColortoblue(){
    setState(() {
      _bgColor = Colors.blueAccent;
    });
  }
  void _BgchangeColortoDefault(){
    setState(() {
      _bgColor = Colors.black;
    });
  }
  @override
  Widget build(BuildContext context) {
    return 
       Scaffold(
        appBar: AppBar(
          title: Text("Color Changing App"),
          backgroundColor: _appbar,
        ),
        backgroundColor: _bgColor,
        body: Column(
          children: [
            SizedBox(height: 50,),
            Center(
              child: Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  color: _bxcolor,
                  border: Border.all(
                    color: Colors.red,
                    width: 3
                  ),
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Column(
                  children: [
                    SizedBox(height: 80,),
                    Center(
                      child: Text("Click the button to see Magic",
                style: TextStyle(
                  color: Colors.white,
                ),
                ),
                    ),
                  ],
                ),
              ),
              
            ),
            Column(
              children: [
                SizedBox(height: 50,),
                Container(
                  
                  width: 200,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: Text("Box-Colors",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
                ),
                  ),
                ),
                                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    SizedBox(width: 20,),
                    ElevatedButton(onPressed: (){
_changeColortored();
                    },style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.black),
                    ),
                    
                     child: Text("Red",
                    style: TextStyle(
                      color: Colors.red,
                    ),
                    )),
                    //new green button
                    SizedBox(width: 20,),
                    ElevatedButton(onPressed: (){
                      _changeColortogreen();
                    },style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.black),
                    ),
                    
                     child: Text("Green",
                    style: TextStyle(
                      color: Colors.greenAccent,
                    ),
                    )),
                    //blue button
                    SizedBox(width: 20,),
                    ElevatedButton(onPressed: (){
                     _changeColortoblue();
                    },style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.black),
                    ),
                    
                     child: Text("Blue",
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                    )),
                    //default color
                    SizedBox(width: 20,),
                    ElevatedButton(onPressed: (){
                      _changeColortoDefault();
                    },style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.black),
                    ),
                    
                     child: Text("Default",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    )),
                  ],
                ),
                                SizedBox(
                  height: 10,
                ),
                Container(
                  
                  width: 200,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: Text("Appbar-Colors",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
                ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    SizedBox(width: 20,),
                    ElevatedButton(onPressed: (){
_appbarchangeColortored();
                    },style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.black),
                    ),
                    
                     child: Text("Red",
                    style: TextStyle(
                      color: Colors.red,
                    ),
                    )),
                    //new green button
                    SizedBox(width: 20,),
                    ElevatedButton(onPressed: (){
                      _appbarColortogreen();
                    },style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.black),
                    ),
                    
                     child: Text("Green",
                    style: TextStyle(
                      color: Colors.greenAccent,
                    ),
                    )),
                    //blue button
                    SizedBox(width: 20,),
                    ElevatedButton(onPressed: (){
                     _appbarchangeColortoblue();
                    },style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.black),
                    ),
                    
                     child: Text("Blue",
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                    )),
                    //default color
                    SizedBox(width: 20,),
                    ElevatedButton(onPressed: (){
                      _appbarchangeColortoDefault();
                    },style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.black),
                    ),
                    
                     child: Text("Default",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    )),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  
                  width: 200,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: Text("Background-Color",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
                ),
                  ),
                ),
                                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    SizedBox(width: 20,),
                    ElevatedButton(onPressed: (){
_BgchangeColortoyellow();
                    },style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.black),
                    ),
                    
                     child: Text("Yellow",
                    style: TextStyle(
                      color: Colors.yellow,
                    ),
                    )),
                    //new green button
                    SizedBox(width: 20,),
                    ElevatedButton(onPressed: (){
                      _BgbarColortogreen();
                    },style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.black),
                    ),
                    
                     child: Text("Green",
                    style: TextStyle(
                      color: Colors.greenAccent,
                    ),
                    )),
                    //blue button
                    SizedBox(width: 20,),
                    ElevatedButton(onPressed: (){
                     _BgbarchangeColortoblue();
                    },style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.black),
                    ),
                    
                     child: Text("Blue",
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                    )),
                    //default color
                    SizedBox(width: 20,),
                    ElevatedButton(onPressed: (){
                      _BgchangeColortoDefault();
                    },style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.black),
                    ),
                    
                     child: Text("Default",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    )),
                  ],
                ),
              ],
            )
          ],
        ),
       );
  }
}