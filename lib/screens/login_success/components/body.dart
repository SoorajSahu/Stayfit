import 'package:flutter/material.dart';
import 'package:medxcart/components/default_button.dart';
import 'package:medxcart/screens/complete_profile/complete_profile_screen.dart';
import 'package:medxcart/screens/home/home_screen.dart';
import 'package:medxcart/sizeconfig.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: SizeConfig.screenHeight * 0.04),
        Image.asset(
          "assets/images/success.png",
          height: SizeConfig.screenHeight * 0.4, //40%
        ),
        SizedBox(height: SizeConfig.screenHeight * 0.08),
        Text(
          "Verified Successfuly",
          style: TextStyle(
            fontSize: getProportionateScreenWidth(30),
            fontWeight: FontWeight.bold,
            color: Colors.green,
          ),
        ),
        Spacer(),
        SizedBox(
          width: SizeConfig.screenWidth * 0.6,
          child: DefaultButton(
            text: "Let's Go",
            press: () {
              Navigator.pushNamed(context, CompleteProfileScreen.routeName);
            },
          ),
        ),
        Spacer(),
      ],
    );
  }
}
