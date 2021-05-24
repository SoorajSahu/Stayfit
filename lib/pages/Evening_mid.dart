import 'dart:async';

import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class EveSound extends StatefulWidget {
  int counter;
  EveSound({this.counter});
  _Estate createState() => _Estate(counter);
}

class _Estate extends State<EveSound> {
  int counter;
  //taking counter value passed by Meditation class
  _Estate(this.counter);
  TextEditingController namecontroller = TextEditingController();
  AudioPlayer audioPlayer = AudioPlayer();
  bool playing = false;
  String showtimer = "Be Happy";
  IconData playbtn = Icons.play_circle; // main state of play btn

  void method() {
    print("counter");
    counter = counter * 60;
    starttimer(counter);
  }

//start timer method
  void starttimer(int timer) async {
    const onsec = Duration(seconds: 1);
    Timer.periodic(onsec, (Timer t) {
      setState(() {
        if (timer < 1) {
          t.cancel();
          print("time up");
          StopAudio();
          setState(() {
            playbtn = Icons.play_circle;
            StopAudio();
            playing = false;
          });
        } else {
          PlayAudio();
          timer = timer - 1;
        }
        showtimer = timer.toString();
        counter = timer;
      });
    });
  }

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
          new Container(
            height: 800,
            child: new Image.asset(
              "images/eve_img.jpg",
              fit: BoxFit.cover,
            ),
          ),
          new Container(
            margin: EdgeInsets.only(top: 50),
            alignment: Alignment.topLeft,
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                new IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.timer),
                  color: Colors.white,
                  iconSize: 70,
                ),
                new Container(
                  child: new Center(
                      child: Text(
                    showtimer,
                    style: TextStyle(
                      fontSize: 30,
                      fontFamily: 'Pacifico',
                      color: Colors.white,
                    ),
                  )),
                )
              ],
            ),
          ),
          new Container(
            margin: EdgeInsets.only(top: 350),
            height: 50,
          ),
          new Container(
              alignment: Alignment.bottomCenter,
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  new IconButton(
                    onPressed: () {
                      if (!playing) {
                        setState(() {
                          playbtn = Icons.pause_circle;
                          if (counter > 0) {
                            //start timer
                            method();
                            playing = true;
                          }
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
