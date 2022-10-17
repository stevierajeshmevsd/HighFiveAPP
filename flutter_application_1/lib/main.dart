import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Image Demo'),
          backgroundColor: Colors.white,
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Image.asset('images/high_five_logo_revert.png',
                  height: 400, width: 250),
              Image.asset('images/loadinglol.gif', height: 300, width: 250),
            ],
          ),
        ),
      ),
    );
  }
}
