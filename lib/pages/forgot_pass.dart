import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'Register_page.dart';

class Pass extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Pass> {
  // TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(resizeToAvoidBottomInset: false, body: _body());
  }

  _body() {
    return SingleChildScrollView(
      child: Padding(
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
                              height: 150.0,
                            ),
                          ),
                          // Padding(padding: const EdgeInsets.only(top: 5.0)),

                          Padding(padding: const EdgeInsets.all(10.0)),
                          new Text(
                            "We will send you link on your registered email address to reset password. ",
                            style: TextStyle(
                              fontSize: 15,
                              fontFamily: 'Oldenburg',
                              color: Colors.blue[800],
                            ),
                          ),
                          //
                          Padding(padding: const EdgeInsets.all(10.0)),
                          new TextFormField(
                            decoration: new InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: "Enter Email Address",
                            ),
                            controller: emailController,
                            keyboardType: TextInputType.emailAddress,
                          ),
                          Padding(padding: const EdgeInsets.all(10.0)),

                          Padding(padding: const EdgeInsets.all(5)),
                          new MaterialButton(
                            height: 30.0,
                            minWidth: 120.0,
                            hoverColor: Colors.black87,
                            color: Colors.blue[800],
                            textColor: Colors.white,
                            child: new Text("Submit"),
                            onPressed: () {
                              // print(nameController.text);
                              print(emailController.text);

//
                            }, // dont do anything
                          ),
                          // Padding(padding: const EdgeInsets.only(top: 2.0)),
                          new Container(
                            child: new Row(
                              children: [
                                Text(
                                  'Resend the link?',
                                  style: TextStyle(fontSize: 12),
                                ),
                                FlatButton(
                                    // textColor: Colors.blue[800],
                                    child: Text(
                                      'Click Here',
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.blue[800],
                                      ),
                                    ),
                                    onPressed: () => {},
                                    color: Colors.blue[100]
                                    //  hoverColor: Colors.blue[800],
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
