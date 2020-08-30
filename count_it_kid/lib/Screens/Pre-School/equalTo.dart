
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';


class EqualTo extends StatefulWidget {
  @override
  EqualToState createState() => new EqualToState();
}

class EqualToState extends State<EqualTo> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,

      body: Container(
        alignment: Alignment.center,
        height: MediaQuery.of(context).size.height,

        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("Images/Levels/Equals/equals-full.png"),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}