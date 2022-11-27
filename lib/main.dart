import 'package:flutter/material.dart';
import 'package:flutter_application_1/loading.dart';
import 'package:flutter_application_1/social.dart';

void main() {
  runApp(MaterialApp(home: MyApp1()));
}

class MyApp1 extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Column(children: <Widget>[
      Image.asset('images/HIGH_FIVE_LOGO.png', height: 200, width: 250),
      Container(
        margin: EdgeInsets.all(25),
        child: FlatButton(
          child: Text(
            'Social Media',
            style: TextStyle(fontSize: 20.0),
          ),
          color: Color.fromARGB(220, 255, 112, 112),
          textColor: Colors.white,
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => SocialMedia()));
          },
        ),
      ),
    ])));
  }
}
