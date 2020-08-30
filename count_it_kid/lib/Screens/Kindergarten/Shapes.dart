import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Shapes extends StatefulWidget {
  @override
  ShapesState createState() => new ShapesState();
}

class ShapesState extends State<Shapes> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,

      body: Container(
        alignment: Alignment.center,
        height: MediaQuery.of(context).size.height,

        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("Images/Levels/Shapes/shapes-full.png"),
            fit: BoxFit.fill,
          ),
        ),

      ),
    );
  }
}
