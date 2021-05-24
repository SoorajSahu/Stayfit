import 'package:flutter/material.dart';

//State ful widgets
class Ex extends StatefulWidget {
  _Mstate createState() => _Mstate();
}

class _Mstate extends State<Ex> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Center(
          child: new Text(
            "Do Excercise",
            style: TextStyle(color: Colors.black, fontFamily: 'Pacifico'),
          ),
        ),
        backgroundColor: Colors.lightGreen,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Stack(
        children: [
          new Container(
            height: 800,
            child: new Image.asset(
              "images/img.jpg",
              fit: BoxFit.fill,
            ),
          ),
        ],
      ),
    );
  }
}
