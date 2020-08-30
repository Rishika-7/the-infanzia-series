
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';


class GreaterThan extends StatefulWidget {
  @override
  GreaterThanState createState() => new GreaterThanState();
}

class GreaterThanState extends State<GreaterThan> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,

      body: Container(
        alignment: Alignment.center,
        height: MediaQuery.of(context).size.height,

        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("Images/Levels/LearnBG.png"),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}