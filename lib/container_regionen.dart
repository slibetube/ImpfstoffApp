import 'package:flutter/material.dart';
import 'webviews.dart';






class ContainerRegionen extends StatelessWidget {

  String impfzentrumfinal;
  String urlfinal;

  ContainerRegionen({this.impfzentrumfinal, this.urlfinal});


  @override
  Widget build(BuildContext context) {
    return
      Container(
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
        Text('$impfzentrumfinal',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: 'Comforta',
            fontSize: 15.0,
            fontWeight: FontWeight.w900,
            color: Colors.black,
          ),
        ),
        style: ElevatedButton.styleFrom(
          primary: Colors.grey[200],
          onPrimary: Colors.grey[200],
          shadowColor: Colors.grey[200],
          onSurface: Colors.grey[200],
          minimumSize: Size(400, 40),
          padding: EdgeInsets.all(0),
        ),
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) =>
          Webviews(impfzentrum_name:impfzentrumfinal, url: urlfinal,))

    );
    },
    )

            );
  }
}


