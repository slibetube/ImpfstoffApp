import 'package:flutter/material.dart';
import 'container_regionen.dart';
import '0.1_colors.dart';

class RegionOstalb extends StatefulWidget {
  @override
  _RegionOstalbState createState() => _RegionOstalbState();
}

class _RegionOstalbState extends State<RegionOstalb> {


  String basisurl = 'https://001-iz.impfterminservice.de/impftermine/service?plz=';


  String goeppingen = 'Göppingen, Impfzentrum';
  String aalen = 'Aalen, Kreisimpfzentrum';
  String heidenheim = 'Heidenheim, Congress Center';
  String ulm ='Ulm, Zentrales Impfzentrum';
  String ehningen = 'Ehningen (Donau), Kreisimpfzentrum';

  String plzgoeppingen = '73037';
  String plzaalen ='73430';
  String plzheidenheim ='89522';
  String plzulm = '89703';
  String plzehnigen = '89584';

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
            children: <Widget>[
            SizedBox(height: 5,),
          Container(
            alignment: Alignment.topLeft,
            margin: EdgeInsets.only(left: 5.0),
            child: Text('Impfzentren Region Ostalb',
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
              ContainerRegionen(impfzentrumfinal: '$goeppingen',urlfinal: '$basisurl$plzgoeppingen',),
                    SizedBox(height: 20.0),
              ContainerRegionen(impfzentrumfinal: '$aalen', urlfinal: '$basisurl$plzaalen',),
                    SizedBox(height: 20.0),
              ContainerRegionen(impfzentrumfinal: '$heidenheim', urlfinal: '$basisurl$plzheidenheim',),
                    SizedBox(height: 20.0,),
              ContainerRegionen(impfzentrumfinal: '$ulm', urlfinal: '$basisurl$plzulm',),
                    SizedBox(height: 20.0,),
              ContainerRegionen(impfzentrumfinal: '$ehningen', urlfinal: '$basisurl$plzehnigen',),



      ]
      ),
    )
    );
  }
}
