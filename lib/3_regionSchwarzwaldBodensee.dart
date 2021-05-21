import 'package:flutter/material.dart';
import 'container_regionen.dart';
import '0.1_colors.dart';

class RegionSchwarzwaldBodensee extends StatefulWidget {
  @override
  _RegionSchwarzwaldBodenseeState createState() => _RegionSchwarzwaldBodenseeState();
}

class _RegionSchwarzwaldBodenseeState extends State<RegionSchwarzwaldBodensee> {


  String basisurl = 'https://001-iz.impfterminservice.de/impftermine/service?plz=';

  String villingen ='Villingen-Schwenningen, Kreisimpfzentrum';
  String tuttlingen ='Tuttlingen, Kreisimpfzentrum';
  String rottweil ='Rottweil, Kreisimpfzentrum';
  String friedrichshafen ='Friedrichshafen, Kreisimpfzentrum';
  String singen ='Singen, Kreisimpfzentrum';
  String altensteig ='Altensteig-Wart, Kreisimpfzentrum Calw';
  String dornstetten ='Dornstetten, Kreisimpfzentrum Freudenstadt';

  String plzvillingen ='78056';
  String plzsingen ='78224';
  String plztuttlingen ='78532';
  String plzrottweil ='78628';
  String plzfriedrichshafen ='88045';
  String plzaltensteig ='72213';
  String plzdornstetten ='72280';


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
              child: Text('Impfzentren Region Schwarzwald-Bodensee',
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
            ContainerRegionen(impfzentrumfinal: '$altensteig',urlfinal: '$basisurl$plzaltensteig',),
            SizedBox(height: 20.0),
            ContainerRegionen(impfzentrumfinal: '$dornstetten', urlfinal: '$basisurl$plzdornstetten',),
            SizedBox(height: 20.0),
            ContainerRegionen(impfzentrumfinal: '$rottweil', urlfinal: '$basisurl$plzrottweil',),
            SizedBox(height: 20.0,),
            ContainerRegionen(impfzentrumfinal: '$villingen', urlfinal: '$basisurl$plzvillingen',),
            SizedBox(height: 20.0,),
            ContainerRegionen(impfzentrumfinal: '$singen', urlfinal: '$basisurl$plzsingen',),
            SizedBox(height: 20.0,),
            ContainerRegionen(impfzentrumfinal: '$friedrichshafen', urlfinal: '$basisurl$plzfriedrichshafen',),


          ],
        ),
      ),
    );
  }
}
