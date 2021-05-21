import 'package:flutter/material.dart';
import 'container_regionen.dart';
import '0.1_colors.dart';

class RegionStuttgart extends StatefulWidget {
  @override
  _RegionStuttgartState createState() => _RegionStuttgartState();
}

class _RegionStuttgartState extends State<RegionStuttgart> {

  String basisurl = 'https://001-iz.impfterminservice.de/impftermine/service?plz=';

  String stuttgartliederhalle ='Stuttgart, Liederhalle';
  String stuttgartroberbosch ='Stuttgart, Robert-Bosch-Krankenhaus';
  String leinfelden ='Leinfelden-Echterdingen, Messe';
  String sindelfingen ='Sindelfingen, Kreisimpfzentrum';
  String moensheim='Mönsheim, Appenbergsporthalle';
  String waiblingen ='Waiblingen, Kreisimpfzentrum';
  String ludwigsburg ='Ludwigsburg, Impfzentrum';
  String esslingen ='Esslingen, Kreisimpfzentrum';

  String plzstuttgartliederhalle ='70714';
  String plzstuttgartroberbosch ='70376';
  String plzleinfelden ='70629';
  String plzsindelfingen ='71065';
  String plzmoensheim='71297';
  String plzwaiblingen ='71334';
  String plzludwigsburg ='71636';
  String plzesslingen ='73730';






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
              child: Text('Impfzentren Region Stuttgart',
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
            ContainerRegionen(impfzentrumfinal: '$stuttgartliederhalle',urlfinal: '$basisurl$plzstuttgartliederhalle',),
            SizedBox(height: 20.0),
            ContainerRegionen(impfzentrumfinal: '$stuttgartroberbosch', urlfinal: '$basisurl$plzstuttgartroberbosch',),
            SizedBox(height: 20.0),
            ContainerRegionen(impfzentrumfinal: '$leinfelden', urlfinal: '$basisurl$plzleinfelden',),
            SizedBox(height: 20.0,),
            ContainerRegionen(impfzentrumfinal: '$sindelfingen', urlfinal: '$basisurl$plzsindelfingen',),
            SizedBox(height: 20.0,),
            ContainerRegionen(impfzentrumfinal: '$moensheim', urlfinal: '$basisurl$plzmoensheim',),
            SizedBox(height: 20.0,),
            ContainerRegionen(impfzentrumfinal: '$waiblingen', urlfinal: '$basisurl$plzwaiblingen',),
            SizedBox(height: 20.0,),
            ContainerRegionen(impfzentrumfinal: '$ludwigsburg', urlfinal: '$basisurl$plzludwigsburg',),
            SizedBox(height: 20.0,),
            ContainerRegionen(impfzentrumfinal: '$esslingen', urlfinal: '$basisurl$plzesslingen',),


          ],
        ),

      ),

    );
  }
}
