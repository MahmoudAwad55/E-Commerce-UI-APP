import 'package:flutter/material.dart';
import 'package:graduation_project/screens/Cart/cartPage.dart';
import 'package:graduation_project/screens/Login_Register/login.dart';
import 'package:graduation_project/screens/Login_Register/register.dart';
import 'package:graduation_project/navigtionBottom.dart';
import 'package:graduation_project/screens/SplashScreen/SplashScreen.dart';
import 'package:graduation_project/screens/home/home_screen.dart';

import 'constants.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        scaffoldBackgroundColor: bgColor,
        primarySwatch: Colors.blue,
        fontFamily: "Gordian",
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        textTheme: const TextTheme(
          bodyText2: TextStyle(color: Colors.black54),
        ),
      ),
      home: const SplashScreen(),
      routes: {
        "cartPage": (context) => cartPage(),
        "register": (context) =>MyRegister(),
        "login": (context) =>MyLogin(),
        "Home": (context) =>HomeScreen(),
        "HomeNavigationBar": (context) =>navigtionBottom(),
      },
    );

  }
}
