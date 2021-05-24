import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class EveSound extends StatefulWidget {
  _Estate createState() => _Estate();
}

class _Estate extends State<EveSound> {
  TextEditingController namecontroller = TextEditingController();
  AudioPlayer audioPlayer = AudioPlayer();
  bool playing = false;
  IconData playbtn = Icons.play_circle; // main state of play btn

  PlayAudio() {
    audioPlayer.play(
        "http://cloud.sistec.ac.in/0187cs181021/stayfit/Deep_Meditation.mp3");
  }

  PauseAudio() {
    audioPlayer.pause();
  }

  StopAudio() {
    audioPlayer.stop();
  }

  Widget slider() {
    return Slider(
      activeColor: Colors.white,
      inactiveColor: Colors.grey,
      value: 1,
      min: 0.0,
      onChanged: (double value) {},
    );
  }

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
                  child: ElevatedButton(
                    onPressed: () {
                      print(namecontroller.text); // set timer
                    },
                    child: new Text(
                      "Submit",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontFamily: 'Oldenburg',
                          fontWeight: FontWeight.bold),
                    ),
                    style: ElevatedButton.styleFrom(
                        primary: Colors.white54, elevation: 10),
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
      appBar: AppBar(
        title: new Center(
          child: new Text(
            "Evening Meditation",
            style: TextStyle(color: Colors.black, fontFamily: 'Pacifico'),
          ),
        ),
        backgroundColor: Colors.white54,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Stack(
        children: [
          // new Padding(padding: EdgeInsets.only(top: 100)),
          new Container(
            height: 800,
            child: new Image.asset(
              "images/eve_img.jpg",
              fit: BoxFit.cover,
            ),
            // margin: EdgeInsets.only(top: 100),
          ),

          new Container(
            margin: EdgeInsets.only(top: 50),
            alignment: Alignment.topLeft,
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                new ElevatedButton(
                  onPressed: () {
                    CreateAlertDialoug(BuildContext);
                  },
                  child: new Text(
                    "Set Timer",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontFamily: 'Oldenburg',
                        fontWeight: FontWeight.bold),
                  ),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.white54, elevation: 10),
                ),
                new IconButton(
                  onPressed: () => {},
                  icon: Icon(Icons.timer),
                  color: Colors.white,
                  iconSize: 70,
                ),
              ],
            ),
          ),

          new Container(
            margin: EdgeInsets.only(top: 350),
            height: 50,
            // decoration: BoxDecoration(color: Colors.black),
            child: slider(),
          ),
          new Container(
              alignment: Alignment.bottomCenter,
              // child: new IconButton(
              //     onPressed: () => {}, icon: new Icons(Icons.ac_unit)),
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  new IconButton(
                    onPressed: () {
                      if (!playing) {
                        setState(() {
                          playbtn = Icons.pause_circle;
                          PlayAudio();
                          playing = true;
                        });
                      } else {
                        setState(() {
                          playbtn = Icons.play_circle;
                          StopAudio();
                          playing = false;
                        });
                      }
                    },
                    icon: Icon(playbtn),
                    iconSize: 62,
                    color: Colors.white,
                  ),
                ],
              )),
        ],
      ),
    );
  }
}

