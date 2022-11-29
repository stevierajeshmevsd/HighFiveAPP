import 'package:flutter/material.dart';
import 'package:flutter_application_1/loading.dart';
import 'package:flutter_application_1/social.dart';
import 'package:flutter_application_1/game.dart';

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
      Container(
        margin: EdgeInsets.only(top: 40),
        child:
            Image.asset('images/HIGH_FIVE_LOGO.png', height: 200, width: 240),
      ),
      Container(
        margin: EdgeInsets.only(left: 19, top: 70, right: 19, bottom: 0),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
              margin: EdgeInsets.only(left: 5, right: 5),
              child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                    side: BorderSide(
                      width: 1,
                    ),
                    primary: Color.fromARGB(220, 255, 112, 112)),
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => game()));
                },
                icon: Icon(Icons.add),
                label: Text('New Game'),
              )),
          Container(
              margin: EdgeInsets.only(left: 5, right: 5),
              child: ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => game()));
                },
                style: ElevatedButton.styleFrom(
                    side: BorderSide(
                      width: 1,
                    ),
                    primary: Color.fromARGB(220, 255, 112, 112)),
                icon: const Icon(Icons.arrow_circle_right),
                label: Text('Continue   '),
              )),
        ]),
      ),
      Container(
        margin: EdgeInsets.all(4),
        child: ElevatedButton(
          child: Text(
            'Options',
            style: TextStyle(fontSize: 20.0),
          ),
          style: ElevatedButton.styleFrom(
              side: BorderSide(
                width: 1,
              ),
              primary: Color.fromRGBO(80, 139, 206, 1.0)),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => loading()));
          },
        ),
      ),
      Container(
        margin: EdgeInsets.all(5),
        child: ElevatedButton(
          child: Text(
            'Socials',
            style: TextStyle(fontSize: 20.0),
          ),
          style: ElevatedButton.styleFrom(
              side: BorderSide(
                width: 1,
              ),
              primary: Color.fromRGBO(80, 139, 206, 1.0)),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => SocialMedia()));
          },
        ),
      ),
      Container(
        margin: EdgeInsets.only(top: 90, bottom: 10),
        child: Image.asset('images/marysville.png', height: 200, width: 200),
      ),
    ])));
  }
}
