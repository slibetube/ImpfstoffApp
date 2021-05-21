import 'package:flutter/material.dart';
import 'container_regionen.dart';
import '0.1_colors.dart';



class RegionBreisgau extends StatefulWidget {
  @override
  _RegionBreisgauState createState() => _RegionBreisgauState();
}

class _RegionBreisgauState extends State<RegionBreisgau> {

  String basisurl = 'https://001-iz.impfterminservice.de/impftermine/service?plz=';

  String offenburg = 'Offenburg, Messe';
  String buehl = 'Bühl, Kreisimpfzentrum';
  String lahr = 'Lahr, Rheintalhalle';
  String freiburg = 'Freiburg, Messe';
  String kenzingen = 'Kenzingen, Kreisimpfzentrum';
  String muellheim = 'Müllheim, Kreisimpfzentrum';
  String loerrach = 'Lörrach, Impulsivcenter';
  String waldshut = 'Waldshut-Tiengen, Kreisimpfzentrum';

  String plzoffenburg = '77656';
  String plzbuehl = '77815';
  String plzlahr = '77933';
  String plzfreiburg = '79108';
  String plzkenzingen = '79341';
  String plzmuellheim = '79379';
  String plzloerrach = '79541';
  String plzwaldshut = '79761';





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
          child: Text('Impfzentren Region Breisgau/Ortenau',
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
        ContainerRegionen(impfzentrumfinal: '$offenburg',urlfinal: '$basisurl$plzoffenburg',),
        SizedBox(height: 20.0),
        ContainerRegionen(impfzentrumfinal: '$buehl', urlfinal: '$basisurl$plzbuehl',),
        SizedBox(height: 20.0),
        ContainerRegionen(impfzentrumfinal: '$lahr', urlfinal: '$basisurl$plzlahr',),
        SizedBox(height: 20.0,),
        ContainerRegionen(impfzentrumfinal: '$freiburg', urlfinal: '$basisurl$plzfreiburg',),
        SizedBox(height: 20.0,),
        ContainerRegionen(impfzentrumfinal: '$kenzingen', urlfinal: '$basisurl$plzkenzingen',),
        SizedBox(height: 20.0,),
        ContainerRegionen(impfzentrumfinal: '$muellheim', urlfinal: '$basisurl$plzmuellheim',),
        SizedBox(height: 20.0,),
        ContainerRegionen(impfzentrumfinal: '$loerrach', urlfinal: '$basisurl$plzloerrach',),
        SizedBox(height: 20.0,),
        ContainerRegionen(impfzentrumfinal: '$waldshut', urlfinal: '$basisurl$plzwaldshut',),

      ],


      ),
    ),
    );
  }
}

