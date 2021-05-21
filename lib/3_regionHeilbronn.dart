import 'package:flutter/material.dart';
import 'container_regionen.dart';
import '0.1_colors.dart';


class RegionHeilbronn extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    String basisurl = 'https://001-iz.impfterminservice.de/impftermine/service?plz=';

    String heilbronn ='Heilbronn, Kreisimpfzentrum';
    String ilsfeld ='Ilsfeld - Auenstein, Kreisimpfzentrum';
    String wolpertshausen ='Wolpertshausen, Kreisimpfzentrum';
    String rotamsee ='Rot am See, Kreisimpfzentrum';
    String oehringen ='Öhringen, Kreisimpfzentrum';
    String mosbach ='Mosbach, Kreisimpfzentrum';
    String badmergentheim ='Bad-Mergentheim, Kreisimpfzentrum';

    String plzheilbronn ='74081';
    String plzilsfeld ='74360';
    String plzwolpertshausen ='74549';
    String plzrotamsee ='74585';
    String plzoehringen ='74613';
    String plzmosbach ='74821';
    String plzbadmergentheim ='74889';



    return Scaffold(
      appBar:
      AppBar(
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
              child: Text('Impfzentren Region Heilbronn',
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
            ContainerRegionen(impfzentrumfinal: '$heilbronn',urlfinal: '$basisurl$plzheilbronn',),
            SizedBox(height: 20.0),
            ContainerRegionen(impfzentrumfinal: '$ilsfeld', urlfinal: '$basisurl$plzilsfeld',),
            SizedBox(height: 20.0),
            ContainerRegionen(impfzentrumfinal: '$wolpertshausen', urlfinal: '$basisurl$plzwolpertshausen',),
            SizedBox(height: 20.0,),
            ContainerRegionen(impfzentrumfinal: '$rotamsee', urlfinal: '$basisurl$plzrotamsee',),
            SizedBox(height: 20.0,),
            ContainerRegionen(impfzentrumfinal: '$oehringen', urlfinal: '$basisurl$plzoehringen',),
            SizedBox(height: 20.0,),
            ContainerRegionen(impfzentrumfinal: '$mosbach', urlfinal: '$basisurl$plzmosbach',),
            SizedBox(height: 20.0,),
            ContainerRegionen(impfzentrumfinal: '$badmergentheim', urlfinal: '$basisurl$plzbadmergentheim',),


          ],
        ),
      ),
    );
  }
}
