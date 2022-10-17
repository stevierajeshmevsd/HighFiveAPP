import 'package:flutter/material.dart';

void main() {
  runApp(Container(
    color: Colors.white,
  ));
  print("ran");
}

class imgh extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AppMaking.co"),
        centerTitle: true,
        backgroundColor: Colors.blue[900],
      ),
      body: Center(
        child: Image.asset(
          "images/high_five_logo_revert.png",
          height: 200,
          width: 200,
        ),
      ),
    );
  }
}
