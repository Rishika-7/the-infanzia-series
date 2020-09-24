import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:knowitkid/Screens/Pre-School/bodyparts.dart';
import 'package:knowitkid/Screens/Pre-School/Exercise/Exercise(Fruits).dart';
import 'package:knowitkid/Screens/Pre-School/Exercise/Exercise(Vegetables).dart';
import 'package:knowitkid/Screens/Pre-School/Exercise/Exercise(Color).dart';
import 'package:knowitkid/Screens/Pre-School/Exercise/Exercise(Shapes)/ShapesExe.dart';
import 'package:knowitkid/Screens/Pre-School/Exercise/Exercise(Bodyparts)/BodypartExe.dart';
import 'package:knowitkid/Screens/Pre-School/colors.dart';
import 'package:knowitkid/Screens/Pre-School/fruits.dart';
import 'package:knowitkid/Screens/Pre-School/shapes.dart';
import 'package:knowitkid/Screens/Pre-School/veggies.dart';
import 'package:knowitkid/Helpscreen.dart';
import 'introduction.dart';

class PSLevels extends StatefulWidget {
  final String name;
  final String age;
  PSLevels({Key key, @required this.name, this.age}) : super(key: key);

  @override
  LevelsState createState() => new LevelsState(
    name : name,
    age: age,
  );
}

class LevelsState extends State<PSLevels> {

  String name;
  String age;
  LevelsState({this.name, this.age});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Container(
        alignment: Alignment.center,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("Images/LearnBG.png"),
            fit: BoxFit.fill,
          ),
        ),
        child: Grid(
          name: name,
          age: age,
        ),
      ),
    );
  }
}

class Grid extends StatefulWidget {
  final String name;
  final String age;
  Grid({Key key, @required this.name, this.age}) : super(key: key);

  @override
  GridApp createState() => new GridApp(
    name : name,
    age: age,
  );
}

class GridApp extends State<Grid> {

  String name;
  String age;
  GridApp({this.name, this.age});

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
                image: AssetImage("Images/intro.png"),
                fit: BoxFit.fill,
              ),
            ),

            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,

              children: <Widget>[
                FloatingActionButton(
                  heroTag: "btn81",
                  onPressed: () {
                    debugPrint('Clicked');
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return Intro(
                        name: name,
                        age: age,
                      );
                    })
                    );
                  },
                  backgroundColor: Colors.blue[900],
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
            width: 300,
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(right: 10),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("Images/colors.png"),
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
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return Colours();
                    }));
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
                  heroTag: "btn12",
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                          return ColorsHS(
                          );
                        }));
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
                image: AssetImage("Images/shapes.png"),
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
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return Shapes();
                    }));
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
                  heroTag: "btn22",
                  onPressed: () {
                     Navigator.of(context).push(
                       new MaterialPageRoute(builder: (BuildContext context) {
                    return ShapesHS();
                    }));
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
          Container(
            width: 300,
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(right: 10),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("Images/fruits.png"),
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
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return Fruits();
                    }));
                  },
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
                  heroTag: "btn32",
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                          return Route1();
                        }));
                  },
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
                image: AssetImage("Images/vegetables.png"),
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
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return Veggies();
                    }));
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
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                          return vegetable();
                        }));
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
                image: AssetImage("Images/bodyparts.png"),
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
                    Navigator.push(context,
                      MaterialPageRoute(builder: (context) {
                    return BodyParts();
                    }));
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
                      Navigator.of(context).push(
                        new MaterialPageRoute(builder: (BuildContext context) {
                    return Bodypart(
                       max: 5,
                       min: 0,
                    );
                    }));
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
