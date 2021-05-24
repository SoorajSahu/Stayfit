import 'dart:convert';
import '../sizeconfig.dart';
import 'package:flutter/material.dart';
import 'package:Stayfit/pages/All_apps.dart';
import 'Register_page.dart';
import '../apilink.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_session/flutter_session.dart';

class LogIn extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<LogIn> {
  final _formKey = GlobalKey<FormState>();
  var session = FlutterSession();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(resizeToAvoidBottomInset: false, body: _body());
  }

  Signin(String email, String pass) async {
    var json =
        jsonEncode(<String, String>{"username": email, "password": pass});
    final response = await http.post(
        Uri.https(ApiLink().getBaseLink(), ApiLink().getSignInLink()),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: json);
    var jsondata = jsonDecode(response.body);
    if (response.statusCode.toString() == '200') {
   
      session.set('token', jsondata['token'].toString());
      Navigator.push(
          context, new MaterialPageRoute(builder: (context) => Allapp()));
    } else if (response.statusCode.toString() == '401') {
      Popup('Please Enter Valid Username Password');
    }
  }

  Popup(String message) {
    return showDialog(
        barrierDismissible: false,
        context: context,
        builder: (BuildContext context) => AlertDialog(
              content: Text("$message"),
              actions: [
                TextButton(
                  child: const Text('Ok'),
                  onPressed: () => {Navigator.pop(context)},
                ),
              ],
            ));
  }

  String validateEmail(String value) {
    Pattern pattern =
        r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]"
        r"{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]"
        r"{0,253}[a-zA-Z0-9])?)*$";
    RegExp regex = new RegExp(pattern);
    if (!regex.hasMatch(value) || value == null)
      return 'Enter a valid email';
    else
      return null;
  }

  _body() {
    return Scaffold(
      appBar: AppBar(title: Text('LOGIN'), centerTitle: true),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Container(
                child: Image.asset(
                  'images/logo.png',
                  width: 150,
                ),
                alignment: Alignment.center,
              ),
              Container(
                padding: EdgeInsets.all(15),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      buildEmailFormField(),
                      SizedBox(height: 30),
                      buildpasswordFormField(),
                      SizedBox(height: 30),
                      FlatButton(
                        child: Text("CONTINUE"),
                        color: Colors.blue,
                        onPressed: () {
                          if (_formKey.currentState.validate()) {
                            Signin(
                                emailController.text, passwordController.text);
                          } else {}
                        },
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Don't have account ?"),
                          TextButton(
                            child: Text(
                              "Sign Up.",
                              style:
                                  TextStyle(color: Colors.blue, fontSize: 18),
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  new MaterialPageRoute(
                                      builder: (context) => StayFitApp()));
                            },
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  TextFormField buildpasswordFormField() {
    return TextFormField(
      onSaved: (newValue) => passwordController.text = newValue,
      keyboardType: TextInputType.visiblePassword,
      onChanged: (value) {
        if (value.isNotEmpty) {
          passwordController.text = value;
        }
        return null;
      },
      decoration: InputDecoration(
          labelText: "Password",
          border: OutlineInputBorder(),
          hintText: "Password",
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: Icon(Icons.password_rounded)),
      obscureText: true,
      validator: (String value) {
        if (value.trim().isEmpty) {
          return 'Password is required';
        }
      },
    );
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
      onSaved: (newValue) => emailController.text = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          emailController.text = value;
        }
        return null;
      },
      validator: validateEmail,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: "Email",
        hintText: "Enter your Email",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: Icon(Icons.mail_rounded),
      ),
    );
  }
}
