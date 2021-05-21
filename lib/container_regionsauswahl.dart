import 'package:flutter/material.dart';



class ContainerRegionsauswahl extends StatelessWidget {

  // ignore: non_constant_identifier_names
  final String name_region;
  // ignore: non_constant_identifier_names
  final String routing_region;


  // ignore: non_constant_identifier_names
  ContainerRegionsauswahl({this.name_region, this.routing_region});

  @override
  Widget build(BuildContext context) {
    return  Container(
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
          borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child:
      ElevatedButton(
        child:
        Text('$name_region',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: 'Comforta',
            fontSize: 18,
            fontWeight: FontWeight.w900,
          ),
        ),
        style: ElevatedButton.styleFrom(
          primary: Colors.grey[200],
          onPrimary: Colors.black,
          shadowColor: Colors.grey[200],
          onSurface: Colors.grey[200],
          minimumSize: Size(400, 50),
        ),
        onPressed: () {
          Navigator.pushNamed(context, '$routing_region');
        },
      ),
    );
  }
}






