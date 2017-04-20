import 'package:flutter/material.dart';

enum _QuestionMenuItem { how, about }

class SettingsPage extends StatefulWidget {
  SettingsPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _SettingsPageState createState() => new _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {

  void _handleMenu(BuildContext context, _QuestionMenuItem value) {
    //TODO
  }


  Widget _buildAppBar() {
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
      appBar: _buildAppBar(),
      body: new Center(
        child: new Text(
          'Settings Panel',
        ),
      ),
    );
  }
}