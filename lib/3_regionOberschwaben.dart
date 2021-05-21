import 'package:flutter/material.dart';
import 'container_regionen.dart';
import '0.1_colors.dart';

class RegionOberschwaben extends StatefulWidget {
  @override
  _RegionOberschwabenState createState() => _RegionOberschwabenState();
}

class _RegionOberschwabenState extends State<RegionOberschwaben> {
  @override
  Widget build(BuildContext context) {

    String basisurl = 'https://001-iz.impfterminservice.de/impftermine/service?plz=';

    String ravensburg ='Ravensburg, Oberschwabenhalle';
    String hohentengen = 'Hohentengen, Kreisimpfzentrum Sigmaringen';
    String ummendorf = 'Ummendorf, Kreisimpfzentrum Biberach';

    String plzravensburg ='88212';
    String plzhohentengen = '88367';
    String plzummendorf = '88444';



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
                  child: Text('Impfzentren Region Oberschwaben',
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
                ContainerRegionen(impfzentrumfinal: '$ravensburg',urlfinal: '$basisurl$plzravensburg',),
                SizedBox(height: 20.0),
                ContainerRegionen(impfzentrumfinal: '$hohentengen', urlfinal: '$basisurl$plzhohentengen',),
                SizedBox(height: 20.0),
                ContainerRegionen(impfzentrumfinal: '$ummendorf', urlfinal: '$basisurl$plzummendorf',),
                SizedBox(height: 20.0,),

              ]
          ),
        )
    );
  }
}
