import 'package:flutter/material.dart';
import 'container_regionen.dart';
import '0.1_colors.dart';

class RegionNeckarAlb extends StatefulWidget {
  @override
  _RegionNeckarAlbState createState() => _RegionNeckarAlbState();
}

class _RegionNeckarAlbState extends State<RegionNeckarAlb> {


  String tuebingen ='Tübingen, Paul-Horn-Arena';
  String messstetten ='Meßstetten, Kreisimpfzentrum Zollernalb';
  String reutlingen ='Reutlingen, Stadion an der Kreuzeiche';

  String basisurl = 'https://001-iz.impfterminservice.de/impftermine/service?plz=';

  String plztuebingen ='72072';
  String plzmessstetten ='72469';
  String plzreutlingen ='72762';


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
        body: Padding(
          padding: EdgeInsets.fromLTRB(15.0, 15.0, 15.0, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 5,),
              Container(
                alignment: Alignment.topLeft,
                margin: EdgeInsets.only(left: 5.0),
                child: Text('Impfzentren Region Neckar/Alb',
                  style: TextStyle(
                      fontFamily: 'Comforta',
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      letterSpacing: 1.0
                  ),
                ),
              ),
              Divider(
                height: 10.0,
                thickness: 3.0,
                color: Colors.black,
              ),
              SizedBox(height: 20.0),
              ContainerRegionen(impfzentrumfinal: '$tuebingen',urlfinal: '$basisurl$plztuebingen',),
              SizedBox(height: 20.0),
              ContainerRegionen(impfzentrumfinal: '$messstetten', urlfinal: '$basisurl$plzmessstetten',),
              SizedBox(height: 20.0),
              ContainerRegionen(impfzentrumfinal: '$reutlingen', urlfinal: '$basisurl$plzreutlingen',),



            ],
          ),
        ),
      );

  }
}
