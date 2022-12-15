import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';
import 'package:event_listener/event_listener.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _url = Uri.parse('https://www.high5mevsd.org/');
final Uri _uri =
    Uri.parse('https://www.facebook.com/profile.php?id=100086964819025');
final Uri _uro = Uri.parse('https://www.tiktok.com');
final Uri _urn = Uri.parse('https://www.instagram.com');

void main() => runApp(SocialMedia());

class SocialMedia extends StatelessWidget {
  // This widget is the root of the application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Social Screen',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: AppBarBack(),
    );
  }
}

class AppBarBack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: Center(
        child: Stack(
          children: <Widget>[
            Align(
              alignment: const Alignment(0.0, -0.25),
              child: SizedBox(
                width: 110.00,
                height: 380.00,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Color.fromARGB(122, 111, 209, 255),
                  ),
                  // Put Your Child widget here.
                ),
              ),
            ),
            Align(
              alignment: const Alignment(0.0, -1.0),
              child: Image.asset('images/HIGH_FIVE_LOGO.png',
                  height: 180, width: 180),
            ),
            new GestureDetector(
              onTap: launchUrl4,
              child: new Container(
                child: Align(
                  alignment: const Alignment(0.0, -0.5),
                  child:
                      Image.asset('images/image67.png', height: 60, width: 60),
                ),
              ),
            ),
            new GestureDetector(
                onTap: launchUrl3,
                child: new Container(
                  child: Align(
                    alignment: const Alignment(0.0, -0.3),
                    child: Image.asset('images/TikTok-logo.png',
                        height: 90, width: 90),
                  ),
                )),
            new GestureDetector(
              onTap: launchUrl2,
              child: new Container(
                child: Align(
                  alignment: const Alignment(0.0, -0.02),
                  child:
                      Image.asset('images/Facebook.png', height: 95, width: 95),
                ),
              ),
            ),
            // ignore: unnecessary_new
            new GestureDetector(
              onTap: _launchUrl,
              child: new Container(
                child: Align(
                  alignment: const Alignment(0.0, 0.21),
                  child: Image.asset('images/high_five_logo_revert.png',
                      height: 80, width: 80),
                ),
              ),
            ),
            const Align(
              alignment: Alignment(0.9, 0.25),
              child: SizedBox(
                width: 150,
                child: Text(
                  "<------Visit Our Website!",
                ),
              ),
            ),
            Align(
              alignment: const Alignment(0.0, 0.5),
              child: SizedBox(
                  height: 40,
                  width: 110,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(220, 255, 112, 112),
                        textStyle: const TextStyle(fontSize: 17) // foreground
                        ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => MyApp1()));
                    },
                    child: const Text('Back'),
                  )),
            ),
            Align(
              alignment: const Alignment(0.0, 1.38),
              child:
                  Image.asset('images/marysville.png', height: 300, width: 300),
            ),
          ],
        ),
      ),
    );
  }
}

Future<void> _launchUrl() async {
  if (!await launchUrl(_url)) {
    throw 'Could not launch $_url';
  }
}

Future<void> launchUrl2() async {
  if (!await launchUrl(_uri)) {
    throw 'Could not launch $_uri';
  }
}

Future<void> launchUrl3() async {
  if (!await launchUrl(_uro)) {
    throw 'Could not launch $_uro';
  }
}

Future<void> launchUrl4() async {
  if (!await launchUrl(_urn)) {
    throw 'Could not launch $_urn';
  }
}
