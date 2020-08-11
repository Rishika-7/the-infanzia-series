
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'package:worditkid/Screens/Pre-School/Dictionary.dart';
import 'package:worditkid/Screens/Pre-School/Exercises/Exercise3.dart';
import 'package:worditkid/Screens/Pre-School/opposite.dart';
import 'package:worditkid/Screens/Pre-School/similar.dart';
import 'package:worditkid/Screens/Pre-School/vowels.dart';
import 'package:worditkid/Screens/Pre-School/rhymingWord.dart';

import 'Exercises/Exercise1.dart';
import 'Exercises/Exercise2.dart';
import 'Exercises/Exercise3.dart';

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

                SizedBox(
                  width: 40,
                ),

                FloatingActionButton(
                  heroTag: "btn12",
                  onPressed: () {},

                  backgroundColor: Colors.green,
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
                image: AssetImage("Images/seasons/alphanary.png"),
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
                      return FirstRoute();
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
                  heroTag: "btn22",
                  onPressed: () {
                    Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) {
                      return Exercise(
                        max: 5,
                        min: 0,
                      );
                    })
                    );
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

          Container(
            width: 300,
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(right: 10),

            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("Images/seasons/vowels.png"),
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
                      return Vowels();
                    })
                    );
                  },

                  backgroundColor: Colors.blueAccent,
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

                  backgroundColor: Colors.blueAccent,
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
                image: AssetImage("Images/seasons/rhyme.png"),
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
                      return rhymingPage();
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
                  heroTag: "btn42",
                  onPressed: () {
                    Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) {
                      return Exercise2(
                      );
                    })
                    );
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
                image: AssetImage("Images/seasons/similar.png"),
                fit: BoxFit.fill,
              ),
            ),

            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,

              children: <Widget>[
                FloatingActionButton(
                  heroTag: "btn5",

                  onPressed: () {
                    debugPrint('Clicked');
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return Similar();
                    })
                    );
                  },

                  backgroundColor: Colors.pinkAccent,
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
                  heroTag: "btn52",
                  onPressed: () {
                  },

                  backgroundColor: Colors.pinkAccent,
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
                image: AssetImage("Images/seasons/opp.png"),
                fit: BoxFit.fill,
              ),
            ),

            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,

              children: <Widget>[
                FloatingActionButton(
                  heroTag: "btn6",

                  onPressed: () {
                    debugPrint('Clicked');
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return Opposite();
                    })
                    );
                  },

                  backgroundColor: Colors.lightBlueAccent[200],
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
                  heroTag: "btn62",
                  onPressed: () {
                  },

                  backgroundColor: Colors.lightBlueAccent[200],
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
