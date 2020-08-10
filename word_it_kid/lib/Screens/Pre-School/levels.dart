
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'package:worditkid/Screens/Pre-School/Dictionary.dart';
import 'package:worditkid/Screens/Pre-School/Exercises/Exercise3.dart';
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
        child: Column(
          children: <Widget>[
            Grid(),
            GridEx(),
          ],
        ),
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
      height: 250.0,
      margin: EdgeInsets.only(top: 180, bottom: 20, right: 40, left: 40),

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
            width: 260,
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
            width: 260,
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
            width: 260,
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
            width: 260,
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
                  heroTag: "btn5",
                  onPressed: () {

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
                  heroTag: "btn52",
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


class GridEx extends StatefulWidget {
  @override
  GridAppEx createState() => new GridAppEx();
}

class GridAppEx extends State<GridEx> {

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.only(bottom: 40, right: 40, left: 40),
      height: 80.0,

      child: ListView(
        scrollDirection: Axis.horizontal,

        children: <Widget>[
          Container(
            width: 80,
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(right: 10),

            decoration: BoxDecoration(
              color: Colors.blue,
            ),

            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,

              children: <Widget>[
                SizedBox(
                  width: 40.0,
                  height: 40.0,
                    child: FloatingActionButton(

                      heroTag: "ebtn1",
                      onPressed: () {
                        Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) {
                          return Exercise(
                            max: 5,
                            min: 0,
                          );
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
                ),


              ],
            ),
          ),
          Container(
            width: 80,
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(right: 10),

            decoration: BoxDecoration(
              color: Colors.blue,
            ),

            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,

              children: <Widget>[
                SizedBox(
                  width: 40.0,
                  height: 40.0,
                  child: FloatingActionButton(

                    heroTag: "ebtn2",
                    onPressed: () {
                      Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) {
                        return Exercise2(
                        );
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
                ),


              ],
            ),
          ),
          Container(
            width: 80,
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(right: 10),

            decoration: BoxDecoration(
              color: Colors.blue,
            ),

            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,

              children: <Widget>[
                SizedBox(
                  width: 40.0,
                  height: 40.0,
                  child: FloatingActionButton(

                    heroTag: "ebtn3",
                    onPressed: () {
                      Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) {
                        return Exercise3(
                        );
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
                ),


              ],
            ),
          ),
          Container(
            width: 80,
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(right: 10),
            color: Colors.pink,

          ),

          Container(
            width: 80,
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(right: 10),
            color: Colors.pink,
          ),

          Container(
            width: 80,
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(right: 10),
            color: Colors.pink,
          ),

          Container(
            width: 80,
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(right: 10),
            color: Colors.pink,
          ),

          Container(
            width: 80,
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(right: 10),
            color: Colors.pink,
          ),

          Container(
            width: 80,
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(right: 10),
            color: Colors.pink,
          ),

          Container(
            width: 80,
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(right: 10),
            color: Colors.pink,
          ),


          Container(
            width: 80,
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(right: 10),
            color: Colors.pink,
          ),

          Container(
            width: 80,
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(right: 10),
            color: Colors.pink,
          ),

          Container(
            width: 80,
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(right: 10),
            color: Colors.pink,
          ),

          Container(
            width: 80,
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(right: 10),
            color: Colors.pink,
          ),
        ],
      ),
    );
  }
}
