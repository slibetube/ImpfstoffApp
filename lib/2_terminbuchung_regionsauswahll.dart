import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'container_regionsauswahl.dart';
import '0.1_colors.dart';


class Regionauswahl extends StatefulWidget {

  @override
  _RegionauswahlState createState() => _RegionauswahlState();
}

class _RegionauswahlState extends State<Regionauswahl> {

  //void abfrage () async{
    //var url = 'https://005-iz.impfterminservice.de/impftermine/service?plz=72072';
    //Response response = await get(url);
    //if (response. statusCode== 200) {print('Daten wurden geladen');}

    //Map encoding = jsonDecode(response.body);
    //print(response);

  //}

  //@override
    //void initState() {
    //super.initState();
    //abfrage();
  //}


  String nameregion1 = 'Region Mannheim \n (Rhein-Neckar)';
  String nameregion2 = 'Region Heilbronn/Tauber';
  String nameregion3 = 'Region Karlsruhe/Enz';
  String nameregion4 = 'Region Breisgau/Ortenau';
  String nameregion5 = 'Region Stuttgart';
  String nameregion6 = 'Region Neckar-Alb';
  String nameregion7 = 'Region Ostalb';
  String nameregion8 = 'Region Oberschwaben';
  String nameregion9 = 'Region Schwarzwald-Bodensee';

  String routingregion1 = '/region1';
  String routingregion2 = '/region2';
  String routingregion3 = '/region3';
  String routingregion4 = '/region4';
  String routingregion5 = '/region5';
  String routingregion6 = '/region6';
  String routingregion7 = '/region7';
  String routingregion8 = '/region8';
  String routingregion9 = '/region9';

List<BottomNavigationBarItem> items;


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
      body:Padding(
      padding: EdgeInsets.fromLTRB(15.0, 0, 15.0, 0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget> [
          SizedBox(height: 9),
          Container(
            margin: EdgeInsets.fromLTRB(15, 0, 15, 0),
            alignment: Alignment.center,
            padding: EdgeInsets.all(0),
            child: Text('Auswahl der Impfzentrum-Region',
              style: TextStyle(
                  fontFamily: 'Comforta',
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
              ),
            ),
          ),
          Divider(
            height: 10.0,
            thickness: 3.0,
            color: Colors.black,
            endIndent: 5.0,
            indent: 5.0,
          ),
          SizedBox(height: 5,),
          ContainerRegionsauswahl(name_region:'$nameregion1', routing_region: '$routingregion1',),
          SizedBox(height: 5.0,),
          ContainerRegionsauswahl(name_region:'$nameregion2', routing_region: '$routingregion2',),
          SizedBox(height: 5.0,),
          ContainerRegionsauswahl(name_region:'$nameregion3', routing_region: '$routingregion3',),
          SizedBox(height: 5.0,),
          ContainerRegionsauswahl(name_region:'$nameregion4', routing_region: '$routingregion4',),
          SizedBox(height: 5.0,),
          ContainerRegionsauswahl(name_region:'$nameregion5', routing_region: '$routingregion5',),
          SizedBox(height: 5.0,),
          ContainerRegionsauswahl(name_region:'$nameregion6', routing_region: '$routingregion6',),
          SizedBox(height: 5.0,),
          ContainerRegionsauswahl(name_region:'$nameregion7', routing_region: '$routingregion7',),
          SizedBox(height: 5.0,),
          ContainerRegionsauswahl(name_region:'$nameregion8', routing_region: '$routingregion8',),
          SizedBox(height: 5.0,),
          ContainerRegionsauswahl(name_region:'$nameregion9', routing_region: '$routingregion9',),
          SizedBox(height: 5.0),
        ]
    ),
      ),
    );
  }
}
