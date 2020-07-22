
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';


class Levels extends StatefulWidget {
  @override
  LevelsState createState() => new LevelsState();
}

class LevelsState extends State<Levels> {

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

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.all(40),
      height: 250.0,

      //padding: EdgeInsets.all(20),
      child: ListView(
        scrollDirection: Axis.horizontal,

        children: <Widget>[
          Container(
            width: 260,
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(right: 10),

            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("Images/Levels/intro.png"),
                fit: BoxFit.fill,
              ),
            ),

            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,

              children: <Widget>[
                FloatingActionButton(
                  heroTag: "btn1",
                  onPressed: () {},

                  backgroundColor: Colors.green,
                  child: Center(
                    child: Text(
                      'GO',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          Container(
            width: 260,
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(right: 10),

            color: Colors.pink,


          ),

          Container(
            width: 260,
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(right: 10),

            color: Colors.blue,


          ),

          Container(
            width: 260,
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(right: 10),

            color: Colors.orange,
          ),


        ],
      ),
    );
  }
}
