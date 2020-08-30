import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Subtraction extends StatefulWidget {
  @override
  SubtractionState createState() => new SubtractionState();
}

class SubtractionState extends State<Subtraction> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,

      body: Container(
        alignment: Alignment.center,
        height: MediaQuery.of(context).size.height,

        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("Images/Levels/Subtract/subtract-full.png"),
            fit: BoxFit.fill,
          ),
        ),

      ),
    );
  }
}
