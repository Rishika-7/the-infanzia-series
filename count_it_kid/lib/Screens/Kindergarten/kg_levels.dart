
import 'package:countitkid/Screens/Kindergarten/Addition.dart';
import 'package:countitkid/Screens/Kindergarten/NumberNames.dart';
import 'package:countitkid/Screens/Kindergarten/Shapes.dart';
import 'package:countitkid/Screens/Kindergarten/Subtraction.dart';
import 'package:countitkid/Screens/Pre-School/Dictionary.dart';
import 'package:countitkid/Screens/Pre-School/Exercise/tracingExercise.dart';
import 'package:countitkid/Screens/Pre-School/Exercise/lessThanExe.dart';
import 'package:countitkid/Screens/Pre-School/greaterThan.dart';
import 'package:countitkid/Screens/Pre-School/lessThan.dart';
import 'package:countitkid/Screens/Pre-School/tracing.dart';
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
      height: 300.0,
      margin: EdgeInsets.only(bottom: 20, right: 20, left: 20),

      child: ListView(

        scrollDirection: Axis.horizontal,

        children: <Widget>[

          Container(
            width: 300,
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(right: 10),

            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("Images/Levels/NumberNames/num.png"),
                fit: BoxFit.fill,
              ),
            ),

            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,

              children: <Widget>[
                FloatingActionButton(
                  heroTag: "btn1",
                  onPressed: () {
                    debugPrint('Clicked');
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return NumberNames();
                    })
                    );
                  },

                  backgroundColor: Colors.orange,
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

                SizedBox(
                  width: 40,
                ),

                FloatingActionButton(
                  heroTag: "btn12",
                  onPressed: () {

                  },

                  backgroundColor: Colors.orange,
                  child: Center(
                    child: Icon(
                      Icons.library_books,
                    ),
                  ),
                ),

              ],
            ),
          ),

          Container(
            width: 300,
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(right: 10),

            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("Images/Levels/Add/addition.png"),
                fit: BoxFit.fill,
              ),
            ),

            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,

              children: <Widget>[
                FloatingActionButton(
                  heroTag: "btn2",
                  onPressed: () {
                    debugPrint('Clicked');
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return Addition();
                    })
                    );
                  },

                  backgroundColor: Colors.greenAccent,
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

                SizedBox(
                  width: 40,
                ),

                FloatingActionButton(
                  heroTag: "btn22",
                  onPressed: () {

                  },

                  backgroundColor: Colors.greenAccent,
                  child: Center(
                    child: Icon(
                      Icons.library_books,
                    ),
                  ),
                ),

              ],
            ),
          ),

          Container(
            width: 300,
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(right: 10),

            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("Images/Levels/Subtract/subtract.png"),
                fit: BoxFit.fill,
              ),
            ),

            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,

              children: <Widget>[
                FloatingActionButton(
                  heroTag: "btn3",
                  onPressed: () {
                    debugPrint('Clicked');
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return Subtraction();
                    })
                    );
                  },

                  backgroundColor: Colors.pinkAccent[100],
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

                SizedBox(
                  width: 40,
                ),

                FloatingActionButton(
                  heroTag: "btn32",
                  onPressed: () {

                  },

                  backgroundColor: Colors.pinkAccent[100],
                  child: Center(
                    child: Icon(
                      Icons.library_books,
                    ),
                  ),
                ),

              ],
            ),
          ),

          Container(
            width: 300,
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(right: 10),

            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("Images/Levels/Shapes/shapes.png"),
                fit: BoxFit.fill,
              ),
            ),

            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,

              children: <Widget>[
                FloatingActionButton(
                  heroTag: "btn4",
                  onPressed: () {
                    debugPrint('Clicked');
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return Shapes();
                    })
                    );
                  },

                  backgroundColor: Colors.redAccent,
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

                SizedBox(
                  width: 40,
                ),

                FloatingActionButton(
                  heroTag: "btn42",
                  onPressed: () {

                  },

                  backgroundColor: Colors.redAccent,
                  child: Center(
                    child: Icon(
                      Icons.library_books,
                    ),
                  ),
                ),

              ],
            ),
          ),

        ],
      ),
    );
  }
}
