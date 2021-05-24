import 'dart:async';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
// import 'package:timer_count_down/timer_controller.dart';

class MorningSound extends StatefulWidget {
  _Mstate createState() => _Mstate();
}

class _Mstate extends State<MorningSound> {
  AudioPlayer audioPlayer = new AudioPlayer();
  Duration duration = new Duration();
  Duration position = new Duration();

  TextEditingController namecontroller = TextEditingController();

  Timer timer;
  int _counter;
  bool playing = false;
  IconData playbtn = Icons.play_circle;

  Widget slider() {
    return Slider.adaptive(
      activeColor: Colors.black87,
      inactiveColor: Colors.grey,

      value: position.inSeconds.toDouble(),
      max: duration.inSeconds.toDouble(),
      min: 0.0,
      // max: len.inSeconds.toDouble(),
      onChanged: (double value) {
        seekTovalue(value.toInt());
        // setState(() {});
      },
    );
  }

  void seekTovalue(int sec) {
    Duration newpos = Duration(seconds: sec);
    print(newpos);
    // _player.seek(newpos);
  }

  int radiotile = 0;
  @override
  void initState() {
    super.initState();
    radiotile = 0;
  }

  radioset(int val) {
    setState(() {
      radiotile = val;
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
                      _counter = int.parse(namecontroller.text);
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
            "Morning Meditation",
            style: TextStyle(color: Colors.black, fontFamily: 'Pacifico'),
          ),
        ),
        backgroundColor: Colors.lightGreen,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Stack(
        children: [
          // new Padding(padding: EdgeInsets.only(top: 100)),
          new Container(
            height: 800,
            child: new Image.network(
              "http://cloud.sistec.ac.in/0187cs181021/stayfit/assassins_creed_valhalla_video_game_ragnar_lothbrok-wallpaper-1366x768.jpg",
              fit: BoxFit.fill,
            ),
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
                  onPressed: () {},
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
                      print("Pressed");
                      print(playing);
                      if (!playing) {
                        setState(() {
                          playbtn = Icons.pause_circle;
                          playing = true;
                          print("play music");
                          PlayAudio();
                          print(playing);
                        });
                      } else {
                        setState(() {
                          print(playing);
                          playbtn = Icons.play_circle;
                          playing = false;
                          StopAudio();
                          print(playing);
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

