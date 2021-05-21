import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '0.1_colors.dart';
import 'package:shared_preferences/shared_preferences.dart';





class FirstScreen extends StatefulWidget {
  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {

  String title = 'Herzlich Willkommen bei der Impftermin-App';
  String titleerklarung = 'Wozu brauchst du diese App?';
  String texterklaerung = 'Diese App soll dir bei der Buchung und Verwal-tung deines Impftermines helfen. '
                          'Dabei kannst du innerhalb dieser App deinen Impfanspruch prüfen, deinen Impftermin buchen und '
                          'deine ge-buchten Impftermine verwalten.';
  String titledateneingabe ='Deine persönlichen Daten';
  String dateneingabe = 'Gebe bitte nachfolgend deinen Namen sowie dein Alter ein.';

  final controllername = TextEditingController();
  final controlleralter = TextEditingController();
  String textname = "Dennis";
  int textalter = 0;


  void _setname() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      textname = controllername.text;
      prefs.setString('savedname', textname);
    });
  }


  void _setalter() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      textalter = int.parse(controlleralter.text);
      prefs.setInt('savedalter', textalter);
          });
  }


  TextEditingController textFieldController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:Padding(
        padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
        child:
      SingleChildScrollView(
      child:Column(
        children: <Widget>[
          SizedBox(height: 60),
          Text(title,
          textAlign: TextAlign.start,
          style: TextStyle(
            fontFamily: 'Comforta',
            fontSize: 34,
            fontWeight: FontWeight.bold,
          ),
          ),
          SizedBox(height: 50),
          Row(
            children: <Widget>[
              Text(titleerklarung,
              textAlign: TextAlign.start,
              style: TextStyle(
                  fontFamily: 'Comforta',
                  fontSize: 18,
                  height: 1.5,
                  fontWeight: FontWeight.bold,
              ),
              ),
            ],
          ),
          SizedBox(height: 5),
          Text(texterklaerung,
          textAlign: TextAlign.start,
          style: TextStyle(
            fontFamily: 'Comforta',
            fontSize: 15,
            height: 1.5,
            fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: 40),
          Row(
            children: <Widget>[
              Text(titledateneingabe,
              textAlign: TextAlign.start,
              style:TextStyle(
                fontFamily: 'Comforta',
                fontSize: 18,
                height: 1.5,
                fontWeight: FontWeight.bold,
              ),
                ),
            ],
          ),
          Text(dateneingabe,
            textAlign: TextAlign.start,
            style: TextStyle(
              fontFamily: 'Comforta',
              fontSize: 15,
              height: 1.5,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: 30),
          Container(
            margin: EdgeInsets.fromLTRB(5, 0, 5, 0),
            width: 380,
            height: 50,
            child: TextField(
              decoration: InputDecoration(labelText: 'Bitte gebe hier dein Name ein',
                labelStyle: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.transparent),
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                ),
                filled: true,
                fillColor: Colors.grey[290],
              ),
            controller: controllername,
          ),
          ),
          SizedBox(height: 20),
          Container(
            margin: EdgeInsets.fromLTRB(5, 0, 5, 0),
            width: 380,
            height: 70,
            child: TextField(
            decoration: InputDecoration(labelText: 'Bitte gebe hier dein Alter ein',
            labelStyle: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w400,
            ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.transparent),
              borderRadius: BorderRadius.all(Radius.circular(30)),
              ),
              filled: true,
              fillColor: Colors.grey[290],
                ),
          controller: controlleralter,
          ),
          ),
          SizedBox(height: 30),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: farbevordergrund,
                onPrimary: Colors.white,
                shadowColor: Colors.grey[200],
                onSurface: Colors.grey[200],
                minimumSize: Size(400, 40),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            ),
            onPressed: () => [_setname(),_setalter(), Navigator.pushReplacementNamed(context, '/homescreen'
            ),
            ],
            child: Text('Bestätigen')
            ),
        ],
      ),
      ),
      ),
    );
  }
}




