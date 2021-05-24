import 'package:flutter/material.dart';
import 'Evening_mid.dart';
import 'Morning_mid.dart';

class MeditationApp extends StatefulWidget {
  _MeditationAppState createState() => _MeditationAppState();
}

class _MeditationAppState extends State<MeditationApp> {
  TextEditingController namecontroller = TextEditingController();
  int counter;

  //alert dialouge for morning meditation page
  CreateAlertDialoug(BuildContext) {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            content: new Stack(
              children: [
                new TextFormField(
                  decoration: new InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Enter time in minutes",
                  ),
                  controller: namecontroller,
                  keyboardType: TextInputType.number,
                ),
                new Container(),
                Padding(padding: EdgeInsets.all(20)),
                new Center(
                  child: RaisedButton(
                    onPressed: () {
                      print(namecontroller.text); // set timer
                      counter = int.parse(namecontroller.text);
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => MorningSound(counter: counter),
                      ));
                    },
                    child: new Text(
                      "Submit",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontFamily: 'Oldenburg',
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
          );
        });
  }

  //alert dialouge for evening meditation page

  CreateAlertDialoug2(BuildContext) {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            content: new Stack(
              children: [
                new TextFormField(
                  decoration: new InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Enter time in minutes",
                  ),
                  controller: namecontroller,
                  keyboardType: TextInputType.number,
                ),
                new Container(),
                Padding(padding: EdgeInsets.all(20)),
                new Center(
                  child: RaisedButton(
                    onPressed: () {
                      print(namecontroller.text); // set timer
                      counter = int.parse(namecontroller.text);
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => EveSound(counter: counter),
                      ));
                    },
                    child: new Text(
                      "Submit",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontFamily: 'Oldenburg',
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
          );
        });
  }

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
                      new ElevatedButton(
                        onPressed: () {
                          CreateAlertDialoug(BuildContext);
                        },
                        child: new Text(
                          "Set Timer",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontFamily: 'Oldenburg',
                              fontWeight: FontWeight.bold),
                        ),
                        style: ElevatedButton.styleFrom(
                            primary: Colors.white54, elevation: 10),
                      ),
                      IconButton(
                        onPressed: () => {},
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
                      new ElevatedButton(
                        onPressed: () {
                          CreateAlertDialoug2(BuildContext);
                        },
                        child: new Text(
                          "Set Timer",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontFamily: 'Oldenburg',
                              fontWeight: FontWeight.bold),
                        ),
                        style: ElevatedButton.styleFrom(
                            primary: Colors.white54, elevation: 10),
                      ),
                      IconButton(
                        onPressed: () => {},
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
