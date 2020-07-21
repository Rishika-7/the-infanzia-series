
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Rhyme extends StatefulWidget {
  @override
  RhymeState createState() => new RhymeState();
}

class RhymeState extends State<Rhyme> {
  String name = "";
  String radioValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,

      body: Container(
        alignment: Alignment.center,
        height: MediaQuery.of(context).size.height,

        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("Images/RhymesBG.png"),
            fit: BoxFit.fill,
          ),
        ),
        child: Grid(),
      ),
    );
  }
}

class Grid extends StatefulWidget {
  @override
  GridApp createState() => new GridApp();
}

class GridApp extends State<Grid> {
  String name = "";
  String radioValue;

  build(context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      alignment: Alignment.center,
      margin: EdgeInsets.all(25),

      child: GridView.count(
        shrinkWrap: true,
        crossAxisCount: 2,
        scrollDirection: Axis.vertical,
        children: <Widget>[

          Container(
            margin: EdgeInsets.all(10),
            color: Colors.green,
          ),

          Container(
            margin: EdgeInsets.all(10),
            color: Colors.pink,
          ),

          Container(
            margin: EdgeInsets.all(10),
            color: Colors.purple,
          ),

          Container(
            margin: EdgeInsets.all(10),
            color: Colors.blue,
          ),
        ],
      ),
    );
  }
}