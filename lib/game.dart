import 'package:flutter/material.dart';
import 'package:event_listener/event_listener.dart';
import 'package:flutter_application_1/loading.dart';
import 'package:flutter_application_1/main.dart';

void main() => runApp(game());

class game extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 40),
                child: Image.asset(
                  'images/HIGH_FIVE_LOGO.png',
                  height: 90,
                  width: 90,
                ),
                padding: EdgeInsets.only(right: 40, left: 40),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 127, 184, 248),
                  border: Border.all(
                    style: BorderStyle.solid,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
              Container(
                  margin: EdgeInsets.only(top: 40),
                  height: 530,
                  width: 350,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 25.0,
                      ),
                    ],
                    borderRadius: BorderRadius.circular(20.0),
                  )),
              Container(
                margin:
                    EdgeInsets.only(left: 19, top: 30, right: 19, bottom: 0),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Container(
                      width: 150,
                      margin: EdgeInsets.only(left: 6, right: 5),
                      child: ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(
                            side: BorderSide(
                              width: 1,
                            ),
                            primary: Color.fromARGB(220, 255, 112, 112)),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => loading()));
                        },
                        icon: Icon(Icons.arrow_circle_left),
                        label: Text('Back'),
                      )),
                  Container(
                      width: 150,
                      margin: EdgeInsets.only(left: 6, right: 5),
                      child: ElevatedButton.icon(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => loading()));
                        },
                        style: ElevatedButton.styleFrom(
                            side: BorderSide(
                              width: 1,
                            ),
                            primary: Color.fromARGB(220, 255, 112, 112)),
                        icon: const Icon(Icons.arrow_circle_right),
                        label: Text('Next  '),
                      )),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
