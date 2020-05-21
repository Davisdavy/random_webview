
import 'package:goga/Home.dart';
import './Help.dart';
import './Account.dart';
import './Categories.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

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
  int _selectedPage = 0;
  final _pageOptions = [
    Home(),
    Categories(),
    Account(),
    Help()
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pageOptions[_selectedPage],
      bottomNavigationBar: SafeArea(
        child: CurvedNavigationBar(
          index: _selectedPage,
          onTap: (int index) {
            setState(() {
              _selectedPage = index;
            });
          },
          color: Colors.deepOrange,
          backgroundColor: Colors.white,
          buttonBackgroundColor: Colors.deepOrange,
          height: 50.0,
          items: <Widget>[
            Icon(Icons.home,size: 25.0,color: Colors.white),
            Icon(Icons.list,size: 25.0,color: Colors.white),
            Icon(Icons.account_circle,size: 25.0,color: Colors.white),
            Icon(Icons.help,size: 25.0,color: Colors.white),
          ],
          animationDuration: Duration(
            milliseconds: 200
          ),
          animationCurve: Curves.bounceInOut,
           ),
      ),
    );

  }

}
