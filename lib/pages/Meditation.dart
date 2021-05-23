import 'package:flutter/material.dart';
import 'Evening_mid.dart';
import 'Morning_mid.dart';

class MeditationApp extends StatefulWidget {
  _MeditationAppState createState() => _MeditationAppState();
}

class _MeditationAppState extends State<MeditationApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          new Align(
            alignment: Alignment.topLeft,
            child: new Container(
              child: Image.asset(
                'images/logo2.png',
                height: 200.0,
                width: 200.0,
              ),
              height: 150,
              width: 150,
            ),
          ),
          new Container(
            decoration: BoxDecoration(
                color: Colors.blue[700],
                borderRadius: BorderRadius.all(Radius.circular(40))),
            height: 60,
            width: 320,
            margin: EdgeInsets.only(top: 100),
            child: new Container(
              decoration: BoxDecoration(),
              height: 10,
              margin: EdgeInsets.all(5),
              child: new Center(
                child: Text(
                  "Choose your Meditation Type",
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Pacifico',
                      fontSize: 20),
                ),
              ),
            ),
          ),
          Card(
            margin: EdgeInsets.only(top: 180, bottom: 200, left: 20, right: 20),
            child: Container(
              width: 300,
              child: new Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Image.asset(
                    "images/morning_med.jpg",
                    width: 300,
                    fit: BoxFit.cover,
                  ),
                  new Text(
                    "Morning Meditation",
                    style: TextStyle(
                        fontFamily: 'Oldenburg',
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  ButtonBar(
                    alignment: MainAxisAlignment.center,
                    buttonPadding: EdgeInsets.all(20),
                    children: [
                      // FlatButton(onPressed: () => {}, child: Text("Play"))

                      IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (context) => MorningSound()));
                        },
                        icon: new Icon(Icons.play_circle_sharp),
                        color: Colors.amberAccent,
                        iconSize: 70,
                      ),
                    ],
                  )
                ],
              ),
              // margin: EdgeInsets.all(50),
            ),
          ),
          Card(
            margin: EdgeInsets.only(top: 360, left: 20, right: 20),
            child: Container(
              width: 300,
              child: new Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  new Image.asset(
                    "images/eve.jpg",
                    width: 300,
                    fit: BoxFit.cover,
                  ),
                  new Text(
                    "Evening Meditation",
                    style: TextStyle(
                        fontFamily: 'Oldenburg',
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  ButtonBar(
                    alignment: MainAxisAlignment.center,
                    buttonPadding: EdgeInsets.all(20),
                    children: [
                      // FlatButton(onPressed: () => {}, child: Text("Play"))

                      IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (context) => EveSound()));
                        },
                        icon: new Icon(Icons.play_circle_filled_rounded),
                        color: Colors.blueAccent,
                        iconSize: 70,
                      ),
                    ],
                  )
                ],
              ),
              // margin: EdgeInsets.all(50),
            ),
          )
        ],
      ),
    );
  }
}
