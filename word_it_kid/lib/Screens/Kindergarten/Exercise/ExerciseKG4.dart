import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:worditkid/Screens/Kindergarten/levelsKG.dart';


void main() {
  runApp(
      MaterialApp(
        title: "Rhyming Words",
        home: Route1A(),
      )
  );
}

class Route1A extends StatefulWidget {
  @override
  _Route1AState createState() => _Route1AState();
}

class _Route1AState extends State<Route1A> {
  bool isRight = false;
  bool isWrong = false;
  int score = 0;
  @override
  Widget build(BuildContext context) {
    if(score == 0){
      return Scaffold(
          body: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("Images/seasons/winter-bg.png"),
                    fit: BoxFit.cover
                )
            ),
            child: Column(
              children: <Widget>[
                Container(

                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(60)),
                  ),
                  padding: EdgeInsets.only(left: 20, right: 20, bottom: 50,top: 140),
                  child: Image.asset("Images/ExerciseKGImages/Elephant.gif",
                    fit: BoxFit.cover,),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    RaisedButton(
                      color: isWrong?Colors.redAccent:Colors.orange,
                      onPressed: (){
                        setState(() {
                          isWrong = true;
                        });
                        Future.delayed(const Duration(seconds: 2),(){
                          Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => Route2(),
                              )
                          );
                        });


                      },
                      child: Text(
                        "Small",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    RaisedButton(
                      color: isRight?Colors.lightGreenAccent[700]:Colors.orange,
                      onPressed: (){
                        setState(() {
                          isRight = true;
                        });
                        Future.delayed(const Duration(seconds: 2),(){
                          Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => Route2(),
                              )
                          );
                        });


                      },
                      child: Text(
                        "Big",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    RaisedButton(
                      color: isWrong?Colors.redAccent:Colors.orange,
                      onPressed: (){
                        setState(() {
                          isWrong = true;
                        });
                        Future.delayed(const Duration(seconds: 2),(){
                          Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => Route2(),
                              )
                          );
                        });


                      },
                      child: Text(
                        "Yellow",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),

                  ]..shuffle(Random(5)),
                )
              ],
            ),
          )
      );
    }
  }
}
class Route2 extends StatefulWidget {
  @override
  _Route2State createState() => _Route2State();
}

class _Route2State extends State<Route2> {
  bool isRight = false;
  bool isWrong = false;
  int score = 0;
  @override
  Widget build(BuildContext context) {
    if(score == 0){
      return Scaffold(
          body: Container(

            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("Images/seasons/winter-bg.png"),
                    fit: BoxFit.cover
                )
            ),
            child: Column(
              children: <Widget>[
                Container(
                   margin: EdgeInsets.fromLTRB(50, 100, 50, 50),
                  decoration: BoxDecoration(
                    color: Colors.pink[300],
                    borderRadius: BorderRadius.all(Radius.circular(60)),
                  ),
                  padding: EdgeInsets.only(left: 10, right: 10, bottom: 50,top: 110),
                  child: Image.asset("Images/ExerciseKGImages/HappyPanda.gif",
                    fit: BoxFit.cover,),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    RaisedButton(
                      color: isWrong?Colors.redAccent:Colors.orange,
                      onPressed: (){
                        setState(() {
                          isWrong = true;
                        });
                        Future.delayed(const Duration(seconds: 2),(){
                          Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => Route3(),
                              )
                          );
                        });


                      },
                      child: Text(
                        "Red",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    RaisedButton(
                      color: isRight?Colors.lightGreenAccent[700]:Colors.orange,
                      onPressed: (){
                        setState(() {
                          isRight = true;
                        });
                        Future.delayed(const Duration(seconds: 2),(){
                          Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => Route3(),
                              )
                          );
                        });


                      },
                      child: Text(
                        "Happy",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    RaisedButton(
                      color: isWrong?Colors.redAccent:Colors.orange,
                      onPressed: (){
                        setState(() {
                          isWrong = true;
                        });
                        Future.delayed(const Duration(seconds: 2),(){
                          Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => Route3(),
                              )
                          );
                        });


                      },
                      child: Text(
                        "Angry",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),

                  ]..shuffle(Random(5)),
                )
              ],
            ),
          )
      );
    }
  }
}
class Route3 extends StatefulWidget {
  @override
  _Route3State createState() => _Route3State();
}

class _Route3State extends State<Route3> {
  bool isRight = false;
  bool isWrong = false;
  int score = 0;
  @override
  Widget build(BuildContext context) {
    if(score == 0){
      return Scaffold(
          body: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("Images/seasons/winter-bg.png"),
                    fit: BoxFit.cover
                )
            ),
            child: Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.fromLTRB(50, 100, 50, 50),
                  decoration: BoxDecoration(
                    color: Colors.pink[300],
                    borderRadius: BorderRadius.all(Radius.circular(60)),
                  ),
                  padding: EdgeInsets.only(left: 10, right: 10, bottom: 50,top: 110),
                  child: Image.asset("Images/ExerciseKGImages/girrafe.gif",
                  width: 250,
                  height: 250,),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    RaisedButton(
                      color: isWrong?Colors.redAccent:Colors.orange,
                      onPressed: (){
                        setState(() {
                          isWrong = true;
                        });
                        Future.delayed(const Duration(seconds: 2),(){
                          Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => Route4(),
                              )
                          );
                        });


                      },
                      child: Text(
                        "Small",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    RaisedButton(
                      color: isRight?Colors.lightGreenAccent[700]:Colors.orange,
                      onPressed: (){
                        setState(() {
                          isRight = true;
                        });
                        Future.delayed(const Duration(seconds: 2),(){
                          Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => Route4(),
                              )
                          );
                        });


                      },
                      child: Text(
                        "Tall",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    RaisedButton(
                      color: isWrong?Colors.redAccent:Colors.orange,
                      onPressed: (){
                        setState(() {
                          isWrong = true;
                        });
                        Future.delayed(const Duration(seconds: 2),(){
                          Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => Route4(),
                              )
                          );
                        });


                      },
                      child: Text(
                        "Sad",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),

                  ]..shuffle(Random(5)),
                )
              ],
            ),
          )
      );
    }
  }
}
class Route4 extends StatefulWidget {
  @override
  _Route4State createState() => _Route4State();
}

class _Route4State extends State<Route4> {
  bool isRight = false;
  bool isWrong = false;
  int score = 0;
  @override
  Widget build(BuildContext context) {
    if(score == 0){
      return Scaffold(
          body: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("Images/seasons/winter-bg.png"),
                    fit: BoxFit.cover
                )
            ),
            child: Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.fromLTRB(50, 100, 50, 50),
                  decoration: BoxDecoration(
                    color: Colors.pink[300],
                    borderRadius: BorderRadius.all(Radius.circular(60)),
                  ),
                  padding: EdgeInsets.only(left: 10, right: 10, bottom: 50,top: 110),
                  child: Image.asset("Images/ExerciseKGImages/dog2.gif",
                    fit: BoxFit.cover,),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    RaisedButton(
                      color: isWrong?Colors.redAccent:Colors.orange,
                      onPressed: (){
                        setState(() {
                          isWrong = true;
                        });
                        Future.delayed(const Duration(seconds: 2),(){
                          Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => Route5(),
                              )
                          );
                        });


                      },
                      child: Text(
                        "Happy",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    RaisedButton(
                      color: isRight?Colors.lightGreenAccent[700]:Colors.orange,
                      onPressed: (){
                        setState(() {
                          isRight = true;
                        });
                        Future.delayed(const Duration(seconds: 2),(){
                          Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => Route5(),
                              )
                          );
                        });


                      },
                      child: Text(
                        "Brown",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    RaisedButton(
                      color: isWrong?Colors.redAccent:Colors.orange,
                      onPressed: (){
                        setState(() {
                          isWrong = true;
                        });
                        Future.delayed(const Duration(seconds: 2),(){
                          Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => Route5(),
                              )
                          );
                        });


                      },
                      child: Text(
                        "Yellow",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),

                  ]..shuffle(Random(5)),
                )
              ],
            ),
          )
      );
    }
  }
}
class Route5 extends StatefulWidget {
  @override
  _Route5State createState() => _Route5State();
}

class _Route5State extends State<Route5> {
  bool isRight = false;
  bool isWrong = false;
  int score = 0;
  @override
  Widget build(BuildContext context) {
    if(score == 0){
      return Scaffold(
          body: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("Images/seasons/winter-bg.png"),
                    fit: BoxFit.cover
                )
            ),
            child: Column(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(60)),
                  ),
                  padding: EdgeInsets.only(left: 20, right: 20, bottom: 50,top: 140),
                  child: Image.asset("Images/ExerciseKGImages/AngryPenguin.gif",
                    fit: BoxFit.cover,),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    RaisedButton(
                      color: isWrong?Colors.redAccent:Colors.orange,
                      onPressed: (){
                        setState(() {
                          isWrong = true;
                        });

                      },
                      child: Text(
                        "Small",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    RaisedButton(
                      color: isRight?Colors.lightGreenAccent[700]:Colors.orange,
                      onPressed: (){
                        setState(() {
                          isRight = true;
                        });



                      },
                      child: Text(
                        "Angry",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    RaisedButton(
                      color: isWrong?Colors.redAccent:Colors.orange,
                      onPressed: (){
                        setState(() {
                          isWrong = true;
                        });



                      },
                      child: Text(
                        "Big",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),

                  ]..shuffle(Random.secure()),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    FloatingActionButton(
                      heroTag: "btn1",
                      child: Icon(Icons.refresh),
                      onPressed: (){
                        Navigator.of(context).push(new MaterialPageRoute(
                            builder: (BuildContext context) =>Route1A(
                            )));
                      },),
                    FloatingActionButton(
                      heroTag: "btn2",
                      child: Icon(Icons.arrow_back_ios),
                      onPressed: (){
                        Navigator.of(context).push(new MaterialPageRoute(
                            builder: (BuildContext context) =>Levels(
                            )));
                      },),

                  ]..shuffle(Random(5)),
                )
              ],
            ),
          )
      );
    }
  }
}