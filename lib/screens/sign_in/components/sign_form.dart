import 'package:flutter/material.dart';
import 'package:medxcart/components/custom_surfix_icon.dart';
import 'package:medxcart/components/form_error.dart';
import 'package:medxcart/helper/keyboard.dart';
import 'package:medxcart/screens/otp/otp_screen.dart';

import '../../../components/default_button.dart';
import '../../../constants.dart';
import '../../../sizeconfig.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:math';

class SignForm extends StatefulWidget {
  @override
  _SignFormState createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {
  final _formKey = GlobalKey<FormState>();
  String phoneNumber;
  bool remember = false;
  final List<String> errors = [];

  void addError({String error}) {
    if (!errors.contains(error))
      setState(() {
        errors.add(error);
      });
  }

  void removeError({String error}) {
    if (errors.contains(error))
      setState(() {
        errors.remove(error);
      });
  }

  void submitForm(String phoneNum) async {
    String sixDigitOtp = randomeOtp();
    var json = jsonEncode(
        <String, String>{'phoneNumber': phoneNum, "otp": sixDigitOtp});
    // check the status code for the result
    final response = await http.post(
      Uri.https('api-medxcart.herokuapp.com', '/api/signup/sendOtp'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: json,
    );
    print(json);
    print(response.body);
  }

  String randomeOtp() {
    // Generate otp
    var rndnumber = "";
    var rnd = new Random();
    for (var i = 0; i < 6; i++) {
      rndnumber = rndnumber + rnd.nextInt(9).toString();
    }
    return rndnumber;
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildPhoneNumberFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          FormError(errors: errors),
          SizedBox(height: getProportionateScreenHeight(20)),
          DefaultButton(
            text: "Continue",
            press: () {
              if (_formKey.currentState.validate()) {
                _formKey.currentState.save();
                // if all are valid then go to success screen
                KeyboardUtil.hideKeyboard(context);

                Navigator.pushNamed(context, OtpScreen.routeName);
              }
              setState(() {
                submitForm(phoneNumber);
              });
            },
          ),
        ],
      ),
    );
  }

  TextFormField buildPhoneNumberFormField() {
    return TextFormField(
      keyboardType: TextInputType.phone,
      onSaved: (newValue) => phoneNumber = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          setState(() {
            phoneNumber = value;
          });
          removeError(error: kPhoneNumberNullError);
        }
        return null;
      },
      validator: (value) {
        if (value.isEmpty) {
          addError(error: kPhoneNumberNullError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Phone Number",
        hintText: "Enter your phone number",
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Phone.svg"),
      ),
    );
  }
}
