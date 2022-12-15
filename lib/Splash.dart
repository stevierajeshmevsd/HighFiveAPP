import 'package:flutter/material.dart';
import 'main.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async {
    await Future.delayed(Duration(milliseconds: 2800), () {});
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => MyApp1()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(children: <Widget>[
          Container(
            alignment: const Alignment(0.0, 0.07),
            child:
                Image.asset('images/marysville.png', height: 400, width: 300),
          ),
          Align(
            alignment: const Alignment(0.0, 0.3),
            child: Image.network(
                'https://gifimage.net/wp-content/uploads/2017/09/ajax-loading-gif-transparent-background-8.gif',
                height: 80,
                width: 80),
          )
        ]),
      ),
    );
  }
}
