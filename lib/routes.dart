import 'package:flutter/widgets.dart';
import 'package:medxcart/screens/complete_profile/complete_profile_screen.dart';
import 'package:medxcart/screens/forget_password/forget_password_screen.dart';
import 'package:medxcart/screens/home/home_screen.dart';
import 'package:medxcart/screens/login_success/login_success_screen.dart';
import 'package:medxcart/screens/otp/otp_screen.dart';
import 'package:medxcart/screens/sign_in/sign_in_screen.dart';
import 'package:medxcart/screens/splash/splash_screen.dart';
import 'package:medxcart/screens/profile/profile_screen.dart';
import 'package:medxcart/screens/cart/cart_screen.dart';
import 'package:medxcart/screens/details/details_screen.dart';
import 'screens/sign_up/sign_up_screen.dart';
import 'package:medxcart/screens/search_results/search_result_secreen.dart';
import 'package:medxcart/screens/product_card/product_card_screen.dart';

// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  LoginSuccessScreen.routeName: (context) => LoginSuccessScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  CompleteProfileScreen.routeName: (context) => CompleteProfileScreen(),
  OtpScreen.routeName: (context) => OtpScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  DetailsScreen.routeName: (context) => DetailsScreen(),
  CartScreen.routeName: (context) => CartScreen(),
  ProfileScreen.routeName: (context) => ProfileScreen(),
  SearchResultScreen.routeName: (context) => SearchResultScreen(),
  ProductCardScreen.routeName: (context) => ProductCardScreen(),
};
