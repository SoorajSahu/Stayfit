import 'package:flutter/material.dart';
import 'Register_page.dart';
import 'forgot_pass.dart';

class LogIn extends StatefulWidget {
  @override
  _LogInState createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  // TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Padding(
        padding: EdgeInsets.all(10),
        // fit: StackFit.expand,

        child: new Stack(
          children: [
            new Form(
              child: new Theme(
                data: new ThemeData(
                    // brightness: Brightness.dark,
                    // primaryColor: Colors.teal,
                    inputDecorationTheme: new InputDecorationTheme(
                  labelStyle:
                      new TextStyle(color: Colors.blue[800], fontSize: 15),
                )),
                child: new Column(
                  children: [
                    new Center(
                      child: new Column(
                        children: [
                          new Center(
                            child: new Image(
                              image: new AssetImage("images/logo2.png"),
                              color: Colors.blue[800],
                              height: 60.0,
                            ),
                          ),
                          // Padding(padding: const EdgeInsets.only(top: 5.0)),
                          new Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              // new Padding(padding: const EdgeInsets.only(top: 80.0)),
                              new Center(
                                  child: new Text(
                                "Stay Fit ",
                                style: TextStyle(
                                    color: Colors.blue[800],
                                    fontWeight: FontWeight.w500,
                                    fontSize: 15,
                                    fontFamily: 'Pacifico'),
                              )),
                            ],
                          ),
                          Padding(padding: const EdgeInsets.all(10.0)),
                          //
                          // Padding(padding: const EdgeInsets.all(10.0)),
                          new TextFormField(
                            decoration: new InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: "Enter Email Address",
                            ),
                            controller: emailController,
                            keyboardType: TextInputType.emailAddress,
                          ),
                          Padding(padding: const EdgeInsets.all(10.0)),
                          new TextFormField(
                            decoration: new InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: "Enter Password",
                            ),
                            keyboardType: TextInputType.text,
                            obscureText: true,
                            controller: passwordController,
                          ),

                          Padding(padding: const EdgeInsets.all(5)),
                          new MaterialButton(
                            height: 30.0,
                            minWidth: 120.0,
                            hoverColor: Colors.black87,
                            color: Colors.blue[800],
                            textColor: Colors.white,
                            child: new Text("Log In"),
                            onPressed: () {
                              // print(nameController.text);
                              print(emailController.text);
                              
                              print(passwordController.text);

                            }, // dont do anything
                          ),
                          // Padding(padding: const EdgeInsets.only(top: 2.0)),
                          new Container(
                            child: new Row(
                              children: [
                                Text(
                                  'Forgot Password ?',
                                  style: TextStyle(fontSize: 12),
                                ),
                                FlatButton(
                                  textColor: Colors.blue[800],
                                  color: Colors.blue[100],
                                  child: Text(
                                    'Click Here',
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.blue[800]),
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        new MaterialPageRoute(
                                            builder: (context) => Pass()));
                                  },
                                  hoverColor: Colors.blue[800],
                                )
                              ],
                              mainAxisAlignment: MainAxisAlignment.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
