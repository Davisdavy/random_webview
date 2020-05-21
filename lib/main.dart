import 'dart:async';

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() => runApp(MaterialApp(
  theme: ThemeData(
    appBarTheme: AppBarTheme(
      color: Colors.deepOrange,
    )
  ),
  home:WebViewApp()));

class WebViewApp extends StatefulWidget {
  @override
  _WebViewAppState createState() => _WebViewAppState();
}

class _WebViewAppState extends State<WebViewApp> {

  final Completer<WebViewController> _controller =
      Completer<WebViewController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: WebView(
        initialUrl: 'https://goga.co.ke/',
        javascriptMode: JavascriptMode.unrestricted,
        onWebViewCreated: (WebViewController webViewController){
          _controller.complete(webViewController);
        },
    ),
    
      ),
      bottomNavigationBar: CurvedNavigationBar(
        color: Colors.deepOrange,
        backgroundColor: Colors.white,
        buttonBackgroundColor: Colors.deepOrange,
        height: 50.0,
        items: <Widget>[
          Icon(Icons.home,size: 20.0,color: Colors.white,),
          Icon(Icons.category,size: 20.0,color: Colors.white),
          Icon(Icons.account_circle,size: 20.0,color: Colors.white),
          Icon(Icons.help,size: 20.0,color: Colors.white),
        ],
        animationDuration: Duration(
          milliseconds: 200
        ),
        index: 0,
        animationCurve: Curves.bounceInOut,
        onTap: (index){
        
          debugPrint("Current index is $index ");
        },
         ),
    );
  }
}
