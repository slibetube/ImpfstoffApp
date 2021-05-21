import 'package:flutter/material.dart';
import 'container_regionen.dart';
import '0.1_colors.dart';

class RegionMannheim extends StatefulWidget {
  @override
  _RegionMannheimState createState() => _RegionMannheimState();
}


class _RegionMannheimState extends State<RegionMannheim> {

  String basisurl = 'https://001-iz.impfterminservice.de/impftermine/service?plz=';

  String berechtigungroute = '/region1';

  String mannheimtest = 'https://www.xn--impfterminbersicht-v6b.de/#2Baden-Wuerttemberg';

  String mannheim = 'Mannheim, Maimarkt';
  String heidelbergpfaffengrund = 'Heidelberg, Pfaffengrund';
  String heidelbergzentrum = 'Heidelberg, Zentrales Impfzentrum';
  String weinheim = 'Weinheim, Kreisimpfzentrum';
  String sinsheim = 'Sinsheim, Kreisimpfzentrum';

  String plzmannheim = '68163';
  String plzheidelbergpfaffengrund = '69123';
  String plzheidelbergzentrum = '69124';
  String plzweinheim = '69469';
  String plzsinsheim = '74889';




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
                  child: Text('Impfzentren Region Mannheim (Rhein-Neckar)',
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
                ContainerRegionen(impfzentrumfinal: '$mannheim',urlfinal: '$basisurl$plzmannheim',),
                SizedBox(height: 20.0),
                ContainerRegionen(impfzentrumfinal: '$heidelbergpfaffengrund', urlfinal: '$basisurl$plzheidelbergpfaffengrund',),
                SizedBox(height: 20.0),
                ContainerRegionen(impfzentrumfinal: '$heidelbergzentrum', urlfinal: '$basisurl$plzheidelbergzentrum',),
                SizedBox(height: 20.0,),
                ContainerRegionen(impfzentrumfinal: '$weinheim', urlfinal: '$basisurl$plzweinheim',),
                SizedBox(height: 20.0,),
                ContainerRegionen(impfzentrumfinal: '$sinsheim', urlfinal: '$basisurl$plzsinsheim',),

              ]
          ),
        )
    );
  }
}
