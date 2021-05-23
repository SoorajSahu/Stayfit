import 'package:flutter/material.dart';
import 'pages/home_page.dart';
// import 'pages/Register_page.dart';

void main() {
  runApp(StayFitApp());
}

class StayFitApp extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<StayFitApp> {
  @override
  Widget build(BuildContext context) {
    //making contatiner
    return MaterialApp(
        title: 'Stay Fit App',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: HomePage());
  }
}
