import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:page_transition/page_transition.dart';
import 'speech.dart';

class splash2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
        duration: 50,
        splash:Container(
          color: Color(0xFF17262A),
        ),
        nextScreen: Speech(),
        splashTransition: SplashTransition.slideTransition,
        pageTransitionType: PageTransitionType.rightToLeft,
        backgroundColor: Color(0XFFF5EAE3));
  }
}
