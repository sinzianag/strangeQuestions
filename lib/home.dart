
import 'package:flutter/material.dart';

enum _QuestionMenuItem { how, about }

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  void _handleShowSettings() {
    Navigator.popAndPushNamed(context, '/settings');
  }

  void _handleMenu(BuildContext context, _QuestionMenuItem value) {
    //TODO
  }

  TextStyle _getTextStyle() {
    return new TextStyle(
      color: Colors.white,
      decoration: TextDecoration.none,
      fontWeight: FontWeight.normal,
      fontStyle: FontStyle.normal,
      fontSize: 36.0,
    );
  }



  Widget buildAppBar() {
    return new AppBar(
        elevation: 0,
        backgroundColor: new Color(0xFF1c283d),
        actions: <Widget>[
          new PopupMenuButton<_QuestionMenuItem>(
            onSelected: (_QuestionMenuItem value) {
              _handleMenu(context, value);
            },
            itemBuilder: (BuildContext context) =>
            <PopupMenuItem<_QuestionMenuItem>>[
              new PopupMenuItem<_QuestionMenuItem>(
                  value: _QuestionMenuItem.how,
                  child: const Text('How this works')),
              new PopupMenuItem<_QuestionMenuItem>(
                  value: _QuestionMenuItem.about,
                  child: const Text('About'))
            ],
          ),
        ]);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: buildAppBar(),
      body: new Center(
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget> [ new Text(
                '  Strange\nQuestions',
                style: _getTextStyle(),
                ),
                new Divider(height: 30.0, indent: 80.0, color: new Color(0xFF263248)),
                new FlatButton(onPressed: _handleShowSettings,
                    child: new Icon(Icons.arrow_forward,
                    color: Colors.white),
                )
              ],
            ),
      ),
//      floatingActionButton: new FloatingActionButton(
//        onPressed: _handleShowSettings,
//        tooltip: 'Increment',
//        child: new Icon(Icons.arrow_forward),
//      ),
    );
  }
}
