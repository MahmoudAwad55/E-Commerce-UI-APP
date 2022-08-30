import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:graduation_project/navigtionBottom.dart';
import 'package:graduation_project/screens/home/home_screen.dart';
import 'package:lottie/lottie.dart';
import 'package:page_transition/page_transition.dart';

import '../Login_Register/login.dart';
class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Lottie.asset('assets/images/splash.json'),


      nextScreen: const MyLogin(),
      splashIconSize: 250,
      duration: 3000,
      splashTransition: SplashTransition.fadeTransition,
      pageTransitionType: PageTransitionType.leftToRightWithFade,
      animationDuration: const Duration(seconds: 1),


    );

  }

}
