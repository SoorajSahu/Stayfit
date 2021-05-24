import 'dart:async';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

//State ful widgets
class MorningSound extends StatefulWidget {
  int counter;

  MorningSound({this.counter});
  _Mstate createState() => _Mstate(counter);
}

class _Mstate extends State<MorningSound> {
  int counter;
//taking counter value from another Meditation Class
  _Mstate(this.counter);
  AudioPlayer audioPlayer = new AudioPlayer();

  TextEditingController namecontroller = TextEditingController();

  String showtimer = "Be Relax";

  bool playing = false;

  IconData playbtn = Icons.play_circle;

  void method() {
    print("counter");
    counter = counter * 60;
    starttimer(counter);
  }

//timer method
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
        "http://cloud.sistec.ac.in/0187cs181021/stayfit/Morning_Meditation.mp3");
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
            "Morning Meditation",
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
          new Container(
            margin: EdgeInsets.only(top: 50),
            alignment: Alignment.topLeft,
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                new IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.timer),
                  color: Colors.green,
                  iconSize: 70,
                ),
                new Container(
                  child: new Center(
                      child: Text(
                    showtimer,
                    style: TextStyle(fontSize: 30, fontFamily: 'Pacifico'),
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
                      print("Pressed");
                      print(playing);
                      if (!playing) {
                        setState(() {
                          playbtn = Icons.pause_circle;
                          playing = true;
                          print("play music");
                          if (counter > 0) {
                            //start timer
                            method();
                            print(playing);
                          }
                        });
                      }
                    },
                    icon: Icon(playbtn),
                    iconSize: 62,
                    color: Colors.green[800],
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
