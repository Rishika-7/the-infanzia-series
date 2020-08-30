
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';


class Tracing extends StatefulWidget {
  @override
  TracingState createState() => new TracingState();
}

class TracingState extends State<Tracing> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,

      body: Container(
        alignment: Alignment.center,
        height: MediaQuery.of(context).size.height,

        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("Images/Levels/Tracing/tracing-full.png"),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}