import 'package:flutter/material.dart';



// Colors that we use in our app
const farbevordergrund = Color(0xFF0C9869);
const farbetext = Color(0xFF3C4046);
const farbehintergrund = Color(0xFFF9F8FD);



class Appbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
      'Deine Impftermin-App',
      style: TextStyle(
          fontFamily: 'Comforta',
          fontWeight: FontWeight.bold,
          fontSize: 20.0,
          color: Colors.white
      ),
    ),
    backgroundColor: farbevordergrund,
    elevation: 12.0,
    shadowColor: Colors.black,
    centerTitle: true,
    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.vertical(
    bottom: Radius.circular(25),
    )
    ),
    );
  }
}


