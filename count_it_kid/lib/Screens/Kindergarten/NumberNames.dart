import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NumberNames extends StatefulWidget {
  @override
  NumberNamesState createState() => new NumberNamesState();
}

class NumberNamesState extends State<NumberNames> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,

      body: Container(
        alignment: Alignment.center,
        height: MediaQuery.of(context).size.height,

        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("Images/Levels/NumberNames/NumNames.png"),
            fit: BoxFit.fill,
          ),
        ),

      ),
    );
  }
}
