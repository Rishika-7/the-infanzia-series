
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
                image: AssetImage("Images/seasons/naming.png"),
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
                image: AssetImage("Images/seasons/describe.png"),
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
                image: AssetImage("Images/seasons/action.png"),
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
            width: 300,
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(right: 10),

            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("Images/seasons/singular.png"),
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
        ],
      ),
    );
  }
}
