import 'dart:async';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import '0.1_colors.dart';



class Webviews extends StatelessWidget {

  String url;
  String impfzentrum_name;

  Webviews({this.impfzentrum_name, this.url});

  final Completer<WebViewController> _controller = Completer<
      WebViewController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('$impfzentrum_name',
        style: TextStyle(
            fontSize: 15.0,
            fontFamily: 'Comforta',
            fontWeight: FontWeight.bold,
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
      body: Builder(builder: (BuildContext context) {
        return WebView(
          initialUrl: url,
          javascriptMode: JavascriptMode.unrestricted,
          onWebViewCreated: (WebViewController webViewController) {
            _controller.complete(webViewController);
          },
        );
      },
      ),
    );
  }
}