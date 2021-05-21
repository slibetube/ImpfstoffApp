import 'package:flutter/material.dart';
import 'container_regionen.dart';
import '0.1_colors.dart';

class RegionKarlsruhe extends StatefulWidget {




    @override
  _RegionKarlsruheState createState() => _RegionKarlsruheState();
  }



class _RegionKarlsruheState extends State<RegionKarlsruhe> {

  String basisurl = 'https://001-iz.impfterminservice.de/impftermine/service?plz=';

  String sulzfeld ='Sulzfeld, Kreisimpfzentrum';
  String pforzheim = 'Pforzheim, Kreisimpfzenrum';
  String bruchsal = 'Bruchsal-Heidelsheim, Kreisimpfzentrum';
  String karlsruhe = 'Karlsruhe, Schwarzwaldhalle';
  String rheinstetten = 'Rheinstetten, Messe';
  String badenbaden = 'Baden-Baden, Kurhaus';


  String plzsulzfeld ='75056';
  String plzprofzheim = '75175';
  String plzbruchsal = '76646';
  String plzkarlsruhe = '70137';
  String plzrheinstetten = '76287';
  String plzbadenbaden = '76530';



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
              child: Text('Impfzentren Region Karlsruhe/Enz',
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
            ContainerRegionen(impfzentrumfinal: '$sulzfeld',urlfinal: '$basisurl$plzsulzfeld',),
            SizedBox(height: 20.0),
            ContainerRegionen(impfzentrumfinal: '$pforzheim', urlfinal: '$basisurl$plzprofzheim',),
            SizedBox(height: 20.0),
            ContainerRegionen(impfzentrumfinal: '$bruchsal', urlfinal: '$basisurl$plzbruchsal',),
            SizedBox(height: 20.0,),
            ContainerRegionen(impfzentrumfinal: '$karlsruhe', urlfinal: '$basisurl$plzkarlsruhe',),
            SizedBox(height: 20.0,),
            ContainerRegionen(impfzentrumfinal: '$rheinstetten', urlfinal: '$basisurl$plzrheinstetten',),
            SizedBox(height: 20.0,),
            ContainerRegionen(impfzentrumfinal: '$badenbaden', urlfinal: '$basisurl$plzbadenbaden',),


          ],
        ),
      ),
    );
  }
}


