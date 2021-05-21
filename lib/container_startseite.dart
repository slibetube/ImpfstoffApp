import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class ContainerStartseite extends StatelessWidget {

  String textinhalt;
  String routing;
  var icon;

  ContainerStartseite({this.textinhalt, this.routing, this.icon});



   @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(15, 0, 15, 0),
      alignment: Alignment.center,
      padding: EdgeInsets.all(0),
      decoration: BoxDecoration(
          color: Colors.grey[200],
          boxShadow: [
            BoxShadow(
                color: Colors.grey[300],
                offset: Offset(4.0,4.0),
                blurRadius: 10.0,
                spreadRadius: 2.0
            ),
          ],
          borderRadius: BorderRadius.all(Radius.circular(10))
      ),
      child:
      TextButton.icon(
             style: TextButton.styleFrom(
           padding: EdgeInsets.fromLTRB(0, 40, 0, 40),
         ),
         onPressed: () {
           Navigator.of(context).pushNamedAndRemoveUntil(
               routing, (Route<dynamic> route) => false);
        },
      label:Text(textinhalt,
        style: TextStyle(
    fontFamily: 'Comforta',
    fontWeight: FontWeight.bold,
    fontSize: 23,
    color: Colors.black,
    ),
    ),
        icon: Icon(icon,
        size: 30,
        color: Colors.green[400],),
        ),

      );
  }
}

