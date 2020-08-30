import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Addition extends StatefulWidget {
  @override
  AdditionState createState() => new AdditionState();
}

class AdditionState extends State<Addition> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,

      body: Container(
        alignment: Alignment.center,
        height: MediaQuery.of(context).size.height,

        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("Images/Levels/Add/addition-full.png"),
            fit: BoxFit.fill,
          ),
        ),

      ),
    );
  }
}
