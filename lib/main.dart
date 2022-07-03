import 'package:flutter/material.dart';
import 'package:resale_test_1/forgotpassword.dart';
import 'package:resale_test_1/login.dart';
import 'package:resale_test_1/register.dart';
import 'package:resale_test_1/resetpassword.dart';
import 'package:resale_test_1/homepage.dart';
import 'package:resale_test_1/books.dart';
import 'package:resale_test_1/cycles.dart';
import 'package:resale_test_1/listingnew.dart';
//import 'package:resale_test_1/details.dart';

void main() {

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    //initialRoute: 'details',
    initialRoute: 'login',
    routes: {
      'register':(context) => MyRegister(),
      'login':(context) => MyLogin(),
      'forgotpassword':(context) => ForgotPassword(),
      'resetpassword':(context) => ResetPassword(),
      'homepage':(context) => HomePage(),
      'books':(context) => Books(),
      'cycles':(context) => Cycles(),
      'listingnew':(context) => Listing(),
      //'details':(context) => Details(),

    },
  ));
}

