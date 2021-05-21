import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '0.1_colors.dart';
import 'package:flutter/widgets.dart';
import 'package:shared_preferences/shared_preferences.dart';



class Startseite extends StatefulWidget {

  @override

  _StartseiteState createState() => _StartseiteState();


}


class _StartseiteState extends State<Startseite> {


  String namecontainer1 = 'Impfberechtigung prüfen';
  String namecontainer2 = 'Impftermin buchen';
  String namecontainer3 = 'Buchung verwalten';


  String berechtigungroute = '/region1';
  String buchungroute = '/regionenauswahl';
  String verwaltungroute = '/regionenauswahl';

  String deinname = "Dennis";
  int deinalter = 52;

  String impfstoffbild1;
  String impfstoffbild2;
  String impfstoffbild3;
  String impfstoffbild4;

  String impfstoffname1;
  String impfstoffname2;
  String impfstoffname3;
  String impfstoffname4;




  void getname() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      deinname = prefs.getString('savedname');
    });
  }

  void getalter() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      deinalter = prefs.getInt('savedalter');
    });
  }

  void impfstofffestlegung() async {
    if(deinalter < 60) {
      impfstoffbild1 = 'assets/biontech.png';
      impfstoffbild2 = 'assets/moderna.png';
      impfstoffbild3 = 'assets/johnson.png';
      impfstoffbild4 = '';

      impfstoffname1 = 'BioNTech / Pfizer';
      impfstoffname2 = 'Moderna';
      impfstoffname3 = 'Johnson&Johnson';
      impfstoffname4 = '';
    }
    else {
      impfstoffbild1 = 'assets/biontech.png';
      impfstoffbild2 = 'assets/moderna.png';
      impfstoffbild3 = 'assets/johnson.png';
      impfstoffbild4 = 'assets/astrazeneca.png';

      impfstoffname1 = 'BioNTech / Pfizer';
      impfstoffname2 = 'Moderna';
      impfstoffname3 = 'Johnson&Johnson';
      impfstoffname4 = 'AstraZeneca';

    }

  }



  @override
  Widget build(BuildContext context) {

    var name = getname();
    var alter = getalter();
    var impfstoff = impfstofffestlegung();

    return Scaffold(
     appBar:AppBar(
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
       padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
       child:Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 30),
            Text('Hallo $deinname,',
            textAlign: TextAlign.start,
            style: TextStyle(
              fontFamily: 'Comforta',
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.all(10),
              width: 400,
              decoration: BoxDecoration(
                  color: farbehintergrund,
                  boxShadow: [
                    BoxShadow(
                        color: farbevordergrund,
                        offset: Offset(4.0,4.0),
                        blurRadius: 10.0,
                        spreadRadius: 2.0
                    ),
                  ],
                  borderRadius: BorderRadius.all(Radius.circular(10))
              ),

              child:
              Column(
              children: <Widget> [
              Text('Dein Weg zur Impfung',
            style: TextStyle(
             fontSize: 23,
             fontWeight: FontWeight.bold,
              ),
            ),
            Divider(
              height: 15,
              thickness: 2.5,
              color: farbevordergrund,
            ),
            SizedBox(height: 10),
            Row(
              children: <Widget>[
                Expanded(
                    flex: 1,
                    child: Icon(Icons.article_outlined,
                color: farbevordergrund,
                size: 40,),
                ),
                Expanded(
                  flex: 5,
                    child:Text('1. Prüfe deinen Anspruch',
                    style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                ),
                ]
            ),
                SizedBox(height: 20),
                Row(
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: Icon(Icons.alarm_on_rounded,
                          color: farbevordergrund,
                          size: 40,),
                      ),
                      Expanded(
                        flex: 5,
                        child:Text('2. Buche deinen Impftermin',
                          style: TextStyle(
                            fontSize: 19,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ]
                ),
                SizedBox(height: 20),
                Row(
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: Icon(Icons.where_to_vote_outlined,
                          color: farbevordergrund,
                          size: 40,),
                      ),
                      Expanded(
                        flex: 5,
                        child:Text('3. Verwalte deine Buchungen',
                          style: TextStyle(
                            fontSize: 19,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ]
                ),
                SizedBox(height: 20),
                SizedBox(height: 10),
              ],
              ),
            ),
             SizedBox(height: 50),
             Container(padding: EdgeInsets.all(10),
                 width: 400,
                 decoration: BoxDecoration(
                     color: farbehintergrund,
                     boxShadow: [
                       BoxShadow(
                           color: farbevordergrund,
                           offset: Offset(4.0,4.0),
                           blurRadius: 10.0,
                           spreadRadius: 2.0
                       ),
                     ],
                     borderRadius: BorderRadius.all(Radius.circular(10))
                 ),
                 child: Column(

                   children: <Widget>[
                     Text('Deine potentiellen Impfstoffe',
                       style: TextStyle(
                         fontSize: 22,
                         fontWeight: FontWeight.bold,
                       ),
                     ),
                     Divider(
                       height: 15,
                       thickness: 2.5,
                       color: farbevordergrund,
                     ),
                     SizedBox(height: 15),
                     Row(
                         children: <Widget>[
                           Expanded(
                             flex: 2,
                             child: Image(image: AssetImage(impfstoffbild1,),
                               width: 20,
                               height: 15,
                             ),
                           ),
                           Expanded(
                             flex: 4,
                             child:Text(impfstoffname1,
                               style: TextStyle(
                                 fontSize: 16,
                                 fontWeight: FontWeight.bold,
                               ),
                             ),
                           ),
                         ]
                     ),
                     SizedBox(height: 15),
                     Row(
                         children: <Widget>[
                           Expanded(
                             flex: 2,
                             child: Image(image: AssetImage(impfstoffbild2,),
                               width: 20,
                               height: 20,
                             ),
                           ),
                           Expanded(
                             flex: 4,
                             child:Text(impfstoffname2,
                               style: TextStyle(
                                 fontSize: 16,
                                 fontWeight: FontWeight.bold,
                               ),
                             ),
                           ),
                         ]
                     ),
                     SizedBox(height: 15),
                     Row(
                         children: <Widget>[
                           Expanded(
                             flex: 2,
                             child: Image(image: AssetImage(impfstoffbild3,),
                               width: 20,
                               height: 20,
                             ),
                           ),
                           Expanded(
                             flex: 4,
                             child:Text(impfstoffname3,
                               style: TextStyle(
                                 fontSize: 16,
                                 fontWeight: FontWeight.bold,
                               ),
                             ),
                           ),
                         ]
                     ),
                     SizedBox(height: 15),
                     Row(
                         children: <Widget>[
                           Expanded(
                             flex: 2,
                             child: Image(image: AssetImage(impfstoffbild4,),
                               width: 20,
                               height: 20,
                             ),
                           ),
                           Expanded(
                             flex: 4,
                             child:Text(impfstoffname4,
                               style: TextStyle(
                                 fontSize: 16,
                                 fontWeight: FontWeight.bold,
                               ),
                             ),
                           ),
                         ]
                     ),


                   ],
                 ),


             ),

              ],
            ),
        ),
        );

  }
}


