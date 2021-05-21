import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:html/parser.dart' as parser;
import 'package:html/dom.dart' as dom;
import '0.1_colors.dart';



class HtmlTesting extends StatefulWidget {
  @override
  _HtmlTestingState createState() => _HtmlTestingState();
}

class _HtmlTestingState extends State<HtmlTesting> {

  List<String> test = [];
  
  String test2 ="";

  void datafromwebsite() async {
    final response = await http.get(Uri.https('xn--impfterminbersicht-v6b.de',''));
    dom.Document document = parser.parse(response.body);
    final elements = document.getElementsByClassName('container-fluid');
    setState(() {
      test = elements.map((element) => element.getElementsByTagName("b") [0].innerHtml)
          .toList();
    });


  }

  @override
  Widget build(BuildContext context) {

    var abfrage = datafromwebsite();

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
      body: ListView.builder(
          itemCount: test.length,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                onTap: () {},
                title: Text(
                  test[index]
                ),

              ),
            );
          }

      ),

    );
  }
}
