import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:impfapp/2_buchungverwalten.dart';
import'2_startseite.dart';
import '2_terminbuchung_regionsauswahll.dart';
import '2_anspruchspruefung.dart';
import '0.1_colors.dart';


class Homescreen extends StatefulWidget {


  @override
  _HomescreenState createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {




  int currentindex = 0;

  final List<Widget> _children = [
    Startseite(),
    Anspruchspruefung(),
    Regionauswahl(),
    Buchungverwalten(),
  ];

  void onTabTapped(int index) {
    setState(() {
      currentindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

    body: _children[currentindex],
            bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.shifting,
            currentIndex: currentindex,
            iconSize: 28,
            selectedFontSize: 12,
            onTap: onTabTapped,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined),
                label: 'Home',
                backgroundColor: farbevordergrund,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.article_outlined),
                label: 'Anspruch prüfen',
                backgroundColor: farbevordergrund,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.alarm_on_rounded,
                  color: Colors.white,
                ),
                label: 'Termin buchen',
                backgroundColor: farbevordergrund,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.where_to_vote_outlined,
                  color: Colors.white,
                ),
                label: 'Buchung verwalten',
                backgroundColor: farbevordergrund,
              ),
            ],
      ),
      );

  }
}



