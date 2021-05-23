// import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'Meditation.dart';
import 'home_page.dart';
// import 'package:intro/pages/All_apps.dart';

class Allapp extends StatefulWidget {
  @override
  _AllappState createState() => _AllappState();
}

class _AllappState extends State<Allapp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.lightBlue,
      appBar: AppBar(),
      drawer: new Drawer(
        child: new ListView(
          children: [
            new UserAccountsDrawerHeader(
              accountName: new Text("Username"),
              accountEmail: new Text("useremail@gmail.com"),
              currentAccountPicture: new CircleAvatar(
                child: new Center(
                  child: new Text(
                    "U",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Oldenburg',
                        fontSize: 25),
                  ),
                ),

                //  Image.asset(
                //   "images/logo2.png",
                //   color: Colors.white,
              ),
            ),
            new ListTile(
              title: Text(
                "Do Excersise",
                style: TextStyle(
                    fontFamily: 'Oldenburg',
                    fontWeight: FontWeight.bold,
                    color: Colors.blue[800]),
              ),
              trailing: new Icon(Icons.alarm_add),
              onTap: () {
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) => HomePage()));
              },
              // tileColor: Colors.blue[300],
              // hoverColor: Color.fromARGB(200, 100, 200, 100),
            ),
            new Divider(),
            new ListTile(
              title: Text(
                "Do Meditation",
                style: TextStyle(
                    fontFamily: 'Oldenburg',
                    fontWeight: FontWeight.bold,
                    color: Colors.blue[800]),
              ),
              trailing: new Icon(Icons.add_reaction),
              onTap: () {
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (context) => MeditationApp()));
              },
              // tileColor: Colors.blue[300],
              // hoverColor: Color.fromARGB(200, 100, 200, 100),
            ),
            new Divider(),
            new ListTile(
              title: Text(
                "Count Calories",
                style: TextStyle(
                    fontFamily: 'Oldenburg',
                    fontWeight: FontWeight.bold,
                    color: Colors.blue[800]),
              ),
              trailing: new Icon(Icons.calculate),
              onTap: () {
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) => HomePage()));
              },
              // tileColor: Colors.blue[300],
              // hoverColor: Color.fromARGB(200, 100, 200, 100),
            ),
            new Divider(),
            new ListTile(
              title: Text(
                "Eat Healthy",
                style: TextStyle(
                    fontFamily: 'Oldenburg',
                    fontWeight: FontWeight.bold,
                    color: Colors.blue[800]),
              ),
              trailing: new Icon(Icons.health_and_safety),
              onTap: () {
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) => HomePage()));
              },
              // tileColor: Colors.blue[300],
              // hoverColor: Color.fromARGB(200, 100, 200, 100),
            ),
            new Divider(),
            new ListTile(
              title: Text(
                "Log Out",
                style: TextStyle(
                    fontFamily: 'Oldenburg',
                    fontWeight: FontWeight.bold,
                    color: Colors.blue[800]),
              ),
              trailing: new Icon(Icons.logout),

              onTap: () {
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) => HomePage()));
              },
              // tileColor: Colors.blue[300],
              // hoverColor: Color.fromARGB(200, 100, 200, 100),
            ),
          ],
        ),
      ),
      body: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 100,
                width: 400,
                color: Colors.blue[400],
              ),
            ],
          ),
          Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Padding(padding: const EdgeInsets.only(top: 5)),
              new Center(
                child: Container(
                  // margin: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 60),
                  // p0, left: 10, bottom: 5, right: 20),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(40))),
                  child: new Text(
                    "Welcome ,Username",
                    style: TextStyle(fontFamily: 'Pacifico', fontSize: 20),
                  ),
                ),
              ),
            ],
          ),
          new Padding(
            padding: const EdgeInsets.only(top: 120),
            child: Text(
              "Click On Your Choice..",
              style: TextStyle(
                  color: Colors.blue[800],
                  fontFamily: 'Oldenburg',
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Padding(padding: const EdgeInsets.all(10)),
          GridView.count(
            crossAxisCount: 2,
            children: [
              Padding(padding: const EdgeInsets.all(10)),
              Container(
                  // decoration: BoxDecoration(color: Colors.blue),
                  ),
              Card(
                // color: Colors.blue,
                margin: EdgeInsets.only(top: 20, left: 10),
                child: Stack(
                  children: [
                    Center(
                      child: Image.asset("images/men_yoga.jpg"),
                    ),
                    ButtonBar(
                      alignment: MainAxisAlignment.center,
                      // buttonPadding: EdgeInsets.only(top: ),

                      children: [
                        // FlatButton(onPressed: () => {}, child: Text("Play"))

                        ElevatedButton(
                          onPressed: () => {},
                          // child: new Text("Do Meditation"),
                          child: new Text(
                            "Do Excersise",
                            style: TextStyle(
                                fontFamily: 'Oldenburg',
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          // elevation: 5,
                          // color: Colors.blue[700],
                          // highlightElevation: 20,
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Card(
                // color: Colors.blue,
                margin: EdgeInsets.only(top: 20, left: 10),

                child: Stack(
                  children: [
                    Center(
                      child: Image.asset("images/medi.webp"),
                    ),
                    ButtonBar(
                      alignment: MainAxisAlignment.center,
                      // buttonPadding: EdgeInsets.only(top: ),

                      children: [
                        // FlatButton(onPressed: () => {}, child: Text("Play"))

                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                new MaterialPageRoute(
                                    builder: (context) => MeditationApp()));
                          },
                          // child: new Text("Do Meditation"),
                          child: new Text(
                            "Do Meditation",
                            style: TextStyle(
                                fontFamily: 'Oldenburg',
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          // elevation: 5,
                          // color: Colors.blue[700],
                          // highlightElevation: 20,
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Card(
                // color: Colors.blue,
                margin: EdgeInsets.only(top: 20, left: 10),
                child: Stack(
                  children: [
                    Center(
                      child: Image.asset("images/diet.jpg"),
                    ),
                    ButtonBar(
                      alignment: MainAxisAlignment.center,
                      // buttonPadding: EdgeInsets.only(top: ),

                      children: [
                        // FlatButton(onPressed: () => {}, child: Text("Play"))

                        ElevatedButton(
                          onPressed: () => {},
                          // child: new Text("Do Meditation"),
                          child: new Text(
                            "Count Calories",
                            style: TextStyle(
                                fontFamily: 'Oldenburg',
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          // elevation: 5,
                          // color: Colors.blue[700],
                          // // highlightElevation: 20,
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Card(
                // color: Colors.blue,
                margin: EdgeInsets.only(top: 20, left: 10),
                child: Stack(
                  children: [
                    Center(
                      child: Image.asset("images/diet_hel.jpg"),
                    ),
                    ButtonBar(
                      alignment: MainAxisAlignment.center,
                      // buttonPadding: EdgeInsets.only(top: ),

                      children: [
                        // FlatButton(onPressed: () => {}, child: Text("Play"))

                        ElevatedButton(
                          onPressed: () => {},
                          // child: new Text("Do Meditation"),
                          child: new Text(
                            "Eat Healthy",
                            style: TextStyle(
                                fontFamily: 'Oldenburg',
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          // elevation: 5,
                          // color: Colors.blue[700],
                          // // highlightElevation: 20,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
