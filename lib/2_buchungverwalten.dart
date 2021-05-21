import 'package:flutter/material.dart';
import '0.1_colors.dart';


class Buchungverwalten extends StatefulWidget {
  @override
  _BuchungverwaltenState createState() => _BuchungverwaltenState();
}

class _BuchungverwaltenState extends State<Buchungverwalten> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
      ),
      body:Center(child:
      Text('Coming soon',
      style: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold
    ),
    ),
      ),
    );
  }
}
