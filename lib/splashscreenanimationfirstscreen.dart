import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import '0.2_firstscreen.dart';
import '0.1_colors.dart';

class SplashAnimationFirstScreen extends StatefulWidget {
  @override
  _SplashAnimationFirstScreenState createState() => _SplashAnimationFirstScreenState();
}

class _SplashAnimationFirstScreenState extends State<SplashAnimationFirstScreen> {
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
        nextScreen: FirstScreen(),
        splashTransition: SplashTransition.fadeTransition,
        backgroundColor: Colors.white,
        duration: 1000,
      ),
    );
  }
}