import 'package:flutter/material.dart';
import 'home.dart';
import 'settings.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatefulWidget {
  @override
  MyAppState createState() => new MyAppState();

}

class MyAppState extends State<MyApp> {

  Route<Null> _getRoute(RouteSettings settings) {
    final List<String> path = settings.name.split('/');
    if (path[0] != '') {
      return null;
    }
  }

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
      routes: <String, WidgetBuilder> {
        '/settings':  (BuildContext context) => new SettingsPage(title: 'Settings')
      }
    );
  }
}


