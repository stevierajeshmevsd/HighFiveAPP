import 'package:flutter/material.dart';
import 'package:event_listener/event_listener.dart';
import 'package:flutter_application_1/loading.dart';

void main() => runApp(loading());

class loading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            children: <Widget>[
              Image.asset('images/HIGH_FIVE_LOGO.png', height: 300, width: 300),
              Image.network(
                  'https://th.bing.com/th/id/R.e7a5419cd0ecefde1a3790b31a08d60a?rik=zcWw1%2bK8Wy2p5g&riu=http%3a%2f%2fwww.clipartbest.com%2fcliparts%2f7ca%2f6Rr%2f7ca6RrLAi.gif&ehk=6gTaT20i6gNWvP0MLLV%2bOKeeAvoS05QnWHCD4nJXTks%3d&risl=&pid=ImgRaw&r=0',
                  height: 100,
                  width: 100),
              Image.asset('images/marysville.png', height: 250, width: 250),
            ],
          ),
        ),
      ),
    );
  }
}
