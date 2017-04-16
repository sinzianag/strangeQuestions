import 'package:flutter/material.dart';
import 'home.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Strange Questions',
      color: Colors.black,
      theme: new ThemeData(
        primarySwatch: Colors.blueGrey,
        primaryColor: Colors.blueGrey,
        canvasColor: const Color(0xFF263248),
        accentColor: Colors.red,
        textTheme: new ThemeData.dark().textTheme,
      ),
      home: new MyHomePage(title: 'Strange Questions'),
    );
  }
}


