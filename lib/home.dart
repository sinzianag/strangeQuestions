import 'package:flutter/material.dart';


enum _QuestionMenuItem { how, about }

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _handleShowSettings() {
    Navigator.popAndPushNamed(context, '/settings');
  }

  void _handleMenu(BuildContext context, _QuestionMenuItem value) {
    //TODO
  }

  Widget buildAppBar() {
      return new AppBar(
        elevation: 0,
          backgroundColor: new Color(0xFF263248),
        actions: <Widget>[
          new PopupMenuButton<_QuestionMenuItem>(
            onSelected: (_QuestionMenuItem value) {_handleMenu(context, value);},
            itemBuilder: (BuildContext context) => <PopupMenuItem<_QuestionMenuItem>>[
              new PopupMenuItem<_QuestionMenuItem>(
                  value: _QuestionMenuItem.how,
                  child: const Text('How this works')),
              new PopupMenuItem<_QuestionMenuItem>(
                  value: _QuestionMenuItem.about,
                  child: const Text('About'))
            ],
          ),
        ]
      );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: buildAppBar(),
      body: new Center(
        child: new Text(
          'Button clicked $_counter time${ _counter == 1 ? '' : 's' }.',
          style: new ThemeData.dark().textTheme.body1,
        ),
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: _handleShowSettings,
        tooltip: 'Increment',
        child: new Icon(Icons.arrow_forward),
      ),
    );
  }
}