// import 'package:flutter/material.dart';
// @override
// void initState() {
//   super.initState();
//   selectedRadio = 0;
//   selectedRadioTile = 0;
// }
 
// setSelectedRadioTile(int val) {
//   setState(() {
//     selectedRadioTile = val;
//   });
// }
 
// // This goes to the build method
// RadioListTile(
//   value: 1,
//   groupValue: selectedRadioTile,
//   title: Text("Radio 1"),
//   subtitle: Text("Radio 1 Subtitle"),
//   onChanged: (val) {
//     print("Radio Tile pressed $val");
//     setSelectedRadioTile(val);
//   },
//   activeColor: Colors.red,
//   secondary: OutlineButton(
//     child: Text("Say Hi"),
//     onPressed: () {
//       print("Say Hello");
//     },
//   ),
//   selected: true,
// ),
// RadioListTile(
//   value: 2,
//   groupValue: selectedRadioTile,
//   title: Text("Radio 2"),
//   subtitle: Text("Radio 2 Subtitle"),
//   onChanged: (val) {
//     print("Radio Tile pressed $val");
//     setSelectedRadioTile(val);
//   },
//   activeColor: Colors.red,
//   secondary: OutlineButton(
//     child: Text("Say Hi"),
//     onPressed: () {
//       print("Say Hello");
//     },
//   ),
//   selected: false,
// )