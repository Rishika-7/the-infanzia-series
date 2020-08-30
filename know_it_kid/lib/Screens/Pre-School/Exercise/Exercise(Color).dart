import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class ExerciseKG4 extends StatefulWidget {
  @override
  _ExerciseKG4State createState() => _ExerciseKG4State();
}

class _ExerciseKG4State extends State<ExerciseKG4> {
  @override
  Widget build(BuildContext context) {
    Navigator.of(context).push(new MaterialPageRoute(
        builder: (BuildContext context) =>Coolors(
        )));
  }
}
class Coolors extends StatefulWidget {
  @override
  _CoolorsState createState() => _CoolorsState();
}

class _CoolorsState extends State<Coolors> {
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
                    image: AssetImage("Images/ColorsBG.png"),
                    fit: BoxFit.fill
                )
            ),
            child: Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.fromLTRB(20, 150, 20, 20),
                  color: Colors.blue[300],
                  padding: EdgeInsets.only(left: 20, right: 20, bottom: 50,top: 40),
                  child: Image.asset("Images/Colors/duck.png",
                    fit: BoxFit.fill,),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    RaisedButton(
                      color: isWrong?Colors.redAccent:Colors.lightGreen,
                      onPressed: (){
                        setState(() {
                          isWrong = true;
                        });
                        Future.delayed(const Duration(seconds: 2),(){
                          Navigator.pop(context);
                          Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => Route2(),
                              )
                          );
                        });


                      },
                      child: Text(
                        "Green",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    RaisedButton(
                      color: isRight?Colors.lightGreenAccent[700]:Colors.yellow,
                      onPressed: (){
                        setState(() {
                          isRight = true;
                        });
                        Future.delayed(const Duration(seconds: 2),(){
                          Navigator.pop(context);
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
                    RaisedButton(
                      color: isWrong?Colors.redAccent:Colors.black,
                      onPressed: (){
                        setState(() {
                          isWrong = true;
                        });
                        Future.delayed(const Duration(seconds: 2),(){
                          Navigator.pop(context);
                          Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => Route2(),
                              )
                          );
                        });


                      },
                      child: Text(
                        "Black",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),

                  ],
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
                    image: AssetImage("Images/ColorsBG.png"),
                    fit: BoxFit.fill
                )
            ),
            child: Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.fromLTRB(20, 150, 20, 20),
                  color: Colors.pink[100],
                  padding: EdgeInsets.only(left: 10, right: 10, bottom: 10,top: 40),
                  child: Image.asset("Images/Colors/Black.png",
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
                          Navigator.pop(context);
                          Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => Route3(),
                              )
                          );
                        });


                      },
                      child: Text(
                        "Orange",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    RaisedButton(
                      color: isRight?Colors.lightGreenAccent[700]:Colors.black,
                      onPressed: (){
                        setState(() {
                          isRight = true;
                        });
                        Future.delayed(const Duration(seconds: 2),(){
                          Navigator.pop(context);
                          Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => Route3(),
                              )
                          );
                        });


                      },
                      child: Text(
                        "Black",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    RaisedButton(
                      color: isWrong?Colors.redAccent:Colors.yellow,
                      onPressed: (){
                        setState(() {
                          isWrong = true;
                        });
                        Future.delayed(const Duration(seconds: 2),(){
                          Navigator.pop(context);
                          Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => Route3(),
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

                  ],
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
                    image: AssetImage("Images/ColorsBG.png"),
                    fit: BoxFit.fill
                )
            ),
            child: Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(left: 10, right: 10, bottom: 10,top: 40),
                  margin: EdgeInsets.fromLTRB(20, 150, 20, 20),
                  color: Colors.yellow[400],
                  child: Image.asset("Images/Colors/postoffice.png",
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
                          Navigator.pop(context);
                          Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => Route4(),
                              )
                          );
                        });


                      },
                      child: Text(
                        "Orange",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    RaisedButton(
                      color: isRight?Colors.lightGreenAccent[700]:Colors.red,
                      onPressed: (){
                        setState(() {
                          isRight = true;
                        });
                        Future.delayed(const Duration(seconds: 2),(){
                          Navigator.pop(context);
                          Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => Route4(),
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
                      color: isWrong?Colors.redAccent:Colors.blue,
                      onPressed: (){
                        setState(() {
                          isWrong = true;
                        });
                        Future.delayed(const Duration(seconds: 2),(){
                          Navigator.pop(context);
                          Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => Route4(),
                              )
                          );
                        });


                      },
                      child: Text(
                        "Blue",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),

                  ],
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
                    image: AssetImage("Images/ColorsBG.png"),
                    fit: BoxFit.fill
                )
            ),
            child: Column(
              children: <Widget>[
                Container(
                  width: 330,
                  color: Colors.yellow[300],
                  margin: EdgeInsets.fromLTRB(50, 150, 50, 50),
                  padding: EdgeInsets.only(left: 10, right: 10, bottom: 50,top: 40),
                  child: Image.asset("Images/Colors/water.png",
                    height: 200,
                    ),
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
                          Navigator.pop(context);
                          Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => Route5(),
                              )
                          );
                        });


                      },
                      child: Text(
                        "Orange",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    RaisedButton(
                      color: isRight?Colors.lightGreenAccent[700]:Colors.blue,
                      onPressed: (){
                        setState(() {
                          isRight = true;
                        });
                        Future.delayed(const Duration(seconds: 2),(){
                          Navigator.pop(context);
                          Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => Route5(),
                              )
                          );
                        });


                      },
                      child: Text(
                        "Blue",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    RaisedButton(
                      color: isWrong?Colors.redAccent:Colors.yellow,
                      onPressed: (){
                        setState(() {
                          isWrong = true;
                        });
                        Future.delayed(const Duration(seconds: 2),(){
                          Navigator.pop(context);
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

                  ],
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
                    image: AssetImage("Images/ColorsBG.png"),
                    fit: BoxFit.fill
                )
            ),
            child: Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.fromLTRB(20, 150, 20, 50),
                  color: Colors.purple[300],
                  width: 290,
                  padding: EdgeInsets.only(left: 20, right: 20, bottom: 50,top: 40),
                  child: Image.asset("Images/Colors/leaves.png",

                  height: 200,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    RaisedButton(
                      color: isWrong?Colors.redAccent:Colors.blue,
                      onPressed: (){
                        setState(() {
                          isWrong = true;
                        });

                      },
                      child: Text(
                        "Blue",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    RaisedButton(
                      color: isRight?Colors.lightGreenAccent[700]:Colors.lightGreen,
                      onPressed: (){
                        setState(() {
                          isRight = true;
                        });



                      },
                      child: Text(
                        "Green",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    RaisedButton(
                      color: isWrong?Colors.redAccent:Colors.yellow,
                      onPressed: (){
                        setState(() {
                          isWrong = true;
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

                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    FloatingActionButton(
                      heroTag: "btn1",
                      child: Icon(Icons.refresh),
                      onPressed: (){
                        Navigator.pop(context);
                        Navigator.of(context).push(new MaterialPageRoute(
                            builder: (BuildContext context) =>Coolors(
                            )));
                      },),
                    FloatingActionButton(
                      heroTag: "btn2",
                      child: Icon(Icons.arrow_back_ios),
                      onPressed: (){
                        Navigator.of(context).pop(new MaterialPageRoute(
                            builder: (BuildContext context) =>Coolors(
                            )));
                      },),

                  ],
                )
              ],
            ),
          )
      );
    }
  }
}