import 'package:flutter/material.dart';
import 'package:impfapp/webviews.dart';
import '0.1_colors.dart';


class ListeAnspruch {

String anspruch;


ListeAnspruch({this.anspruch});


}



class Anspruchspruefung extends StatefulWidget {

  @override
  _AnspruchspruefungState createState() => _AnspruchspruefungState();
}

class _AnspruchspruefungState extends State<Anspruchspruefung> {

String anspruchsgrundlageurl = 'https://www.impfen-bw.de/#/';
String ueberschrift = 'Liste aktuell impfberechtigter Personen';

  List<ListeAnspruch> anspruchsliste = [

    ListeAnspruch(anspruch: '1. Personen über 60 Jahre'),
    ListeAnspruch(anspruch: '2. Personen und Mitarbeiter in Pflegeheimen'),
    ListeAnspruch(anspruch: '3. Personen, welche Schutzimpfungen durchführen'),
    ListeAnspruch(anspruch: '4. Personen im ambulanten Pflegedienst'),
    ListeAnspruch(anspruch: '5. Personen in medizinischen Einrichtungen'),
    ListeAnspruch(anspruch: '6. Personen mit einem hohen Risiko eines schwerwiegenden Verlaufes'),
    ListeAnspruch(anspruch: '7. Bis zu zwei enge Kontaktpersonen (Details in Auflistung'),
    ListeAnspruch(anspruch: '8. Personen und Mitarbeiter in stationären Psychatiren'),
    ListeAnspruch(anspruch: '9. Personen, welche demente und psychisch behinderte Menschen ambulant betreuen'),
  ];


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
    padding: EdgeInsets.fromLTRB(10.0, 0, 10.0, 0),
      child:
        Column(
        children: <Widget> [
          SizedBox(height: 10),
        Expanded(child:
        Webviews(url: anspruchsgrundlageurl, impfzentrum_name: ueberschrift),
      ),
    ],
    ),
      ),
      );
  }
}


