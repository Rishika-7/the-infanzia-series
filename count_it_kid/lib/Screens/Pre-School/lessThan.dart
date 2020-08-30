
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';


class LessThan extends StatefulWidget {
  @override
  LessThanState createState() => new LessThanState();
}

class LessThanState extends State<LessThan> {

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