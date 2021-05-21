import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:async';
import 'package:animated_splash_screen/animated_splash_screen.dart';



class SplashScreen extends StatefulWidget {
  static const String id = "/splashScreen";
  @override
  _Splash createState() => _Splash();
}

class _Splash extends State<SplashScreen> {
  Future checkFirstSeen() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool _seen = (prefs.getBool('seen') ?? false);

    if (_seen) {
      Navigator.pushNamed(context, '/homescreen');
    } else {
      await prefs.setBool('seen', true);
      Navigator.pushNamed(context, '/dateneingabe');
    }
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    checkFirstSeen();
  }
}





