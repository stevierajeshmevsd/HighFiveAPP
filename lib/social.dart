import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';
import 'package:event_listener/event_listener.dart';
import 'package:url_launcher/link.dart';

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
                width: 100.00,
                height: 350.00,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.lightBlueAccent,
                  ),
                  // Put Your Child widget here.
                ),
              ),
            ),
            Align(
              alignment: const Alignment(0.0, -1.0),
              child: Image.asset('images/HIGH_FIVE_LOGO.png',
                  height: 150, width: 150),
            ),
            Align(
              alignment: const Alignment(0.0, -0.5),
              child: Image.asset('images/image67.png', height: 60, width: 60),
            ),
            Align(
              alignment: const Alignment(0.0, -0.3),
              child:
                  Image.asset('images/TikTok-logo.png', height: 90, width: 90),
            ),
            Align(
              alignment: const Alignment(0.0, -0.02),
              child: Image.asset('images/Facebook.png', height: 95, width: 95),
            ),
            Align(
              alignment: const Alignment(0.0, 0.21),
              child: Image.asset('images/high_five_logo_revert.png',
                  height: 80, width: 80),
            ),
            const Align(
              alignment: Alignment(0.6, 0.3),
              child: SizedBox(
                width: 150,
                child: Text(
                  "<------Visit Our Website!",
                ),
              ),
            ),
            Align(
              alignment: const Alignment(0.0, 0.5),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shadowColor: Color.fromRGBO(255, 122, 158, 1) // foreground
                    ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MyApp1()));
                },
                child: const Text('Back'),
              ),
            ),
            Align(
              alignment: const Alignment(0.5, 0.6),
              child: Link(
                target: LinkTarget.blank,
                uri: Uri.parse('https://flutter.dev'),
                builder: ((context, followLink) => ElevatedButton(
                      onPressed: followLink,
                      child: const Text('open link'),
                    )),
              ),
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
