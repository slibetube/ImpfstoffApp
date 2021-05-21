import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import '1_homescreen.dart';
import '0.1_colors.dart';

class SplashAnimationHomescreen extends StatefulWidget {
  @override
  _SplashAnimationHomescreenState createState() => _SplashAnimationHomescreenState();
}

class _SplashAnimationHomescreenState extends State<SplashAnimationHomescreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Comforta',
        scaffoldBackgroundColor: farbehintergrund,
      ),
      home: AnimatedSplashScreen(
        splash: Image(image: AssetImage('assets/vaccine.png'),),
        splashIconSize: 200,
        nextScreen: Homescreen(),
        splashTransition: SplashTransition.fadeTransition,
        backgroundColor: Colors.white,
        duration: 1000,
      ),

    );
  }
}