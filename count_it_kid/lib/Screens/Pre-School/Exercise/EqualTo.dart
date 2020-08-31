import 'dart:math';
import 'package:countitkid/Screens/Pre-School/ps_levels.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Route1 extends StatefulWidget {
  @override
  _Route1State createState() => _Route1State();
}

class _Route1State extends State<Route1> {
  bool isRight = false;
  bool isWrong = false;
  bool isEqual = false;
  int score = 0;
  @override
  Widget build(BuildContext context) {
    if(score == 0){
      return Scaffold(
          body: Container(
            padding: EdgeInsets.only(top: 300),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("Images/Levels/Equals/equals-full.png"),
                    fit: BoxFit.cover
                )
            ),
            child: Column(
              children: <Widget>[
                Row(
                  children: [
                    Container(
                      height: 150,
                      width: 100,
                      margin: EdgeInsets.all(10),
                      child: Image.asset("Images/Levels/Equals/8.png",
                        fit: BoxFit.fill,),

                    ),
                    Container(
                        margin: EdgeInsets.all(10),
                        height: 150,
                        width: 100,
                        padding: EdgeInsets.all(10),
                        color: Colors.white,
                        child: Center(
                          child: Text(
                            "?",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 50
                            ),
                          ),)
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      height: 150,
                      width: 100,
                      child: Image.asset("Images/Levels/Equals/8f.png",
                        fit: BoxFit.fill,),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    RaisedButton(
                      color: isWrong?Colors.lightGreenAccent[700]:Colors.white,
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
                        "=",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    RaisedButton(
                      color: isRight?Colors.redAccent:Colors.white,
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
                        ">",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    RaisedButton(
                      color: isEqual?Colors.redAccent:Colors.white,
                      onPressed: (){
                        setState(() {
                          isEqual = true;
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
                        "<",
                        style: TextStyle(
                            color: Colors.black,
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
  bool isEqual = false;
  int score = 0;
  @override
  Widget build(BuildContext context) {
    if(score == 0){
      return Scaffold(
          body: Container(
            padding: EdgeInsets.only(top: 300),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("Images/Levels/Equals/equals-full.png"),
                    fit: BoxFit.cover
                )
            ),
            child: Column(
              children: <Widget>[
                Row(
                  children: [
                    Container(
                      height: 150,
                      width: 100,
                      margin: EdgeInsets.all(10),
                      child: Image.asset("Images/Levels/GreaterThan/3b.png",
                        fit: BoxFit.fill,),

                    ),
                    Container(
                        margin: EdgeInsets.all(10),
                        height: 150,
                        width: 100,
                        padding: EdgeInsets.all(10),
                        color: Colors.white,
                        child: Center(
                          child: Text(
                            "?",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 50
                            ),
                          ),)
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      height: 150,
                      width: 100,
                      child: Image.asset("Images/Levels/GreaterThan/1b.png",
                        fit: BoxFit.fill,),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    RaisedButton(
                      color: isWrong?Colors.redAccent:Colors.white,
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
                        "=",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    RaisedButton(
                      color: isRight?Colors.lightGreenAccent[700]:Colors.white,
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
                        ">",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    RaisedButton(
                      color: isEqual?Colors.redAccent:Colors.white,
                      onPressed: (){
                        setState(() {
                          isEqual = true;
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
                        "<",
                        style: TextStyle(
                            color: Colors.black,
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
  bool isEqual = false;
  int score = 0;
  @override
  Widget build(BuildContext context) {
    if(score == 0){
      return Scaffold(
          body: Container(
            padding: EdgeInsets.only(top: 300),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("Images/Levels/Equals/equals-full.png"),
                    fit: BoxFit.cover
                )
            ),
            child: Column(
              children: <Widget>[
                Row(
                  children: [
                    Container(
                      height: 150,
                      width: 100,
                      margin: EdgeInsets.all(10),
                      child: Image.asset("Images/Levels/GreaterThan/5b.png",
                        fit: BoxFit.fill,),

                    ),
                    Container(
                        margin: EdgeInsets.all(10),
                        height: 150,
                        width: 100,
                        padding: EdgeInsets.all(10),
                        color: Colors.white,
                        child: Center(
                          child: Text(
                            "?",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 50
                            ),
                          ),)
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      height: 150,
                      width: 100,
                      child: Image.asset("Images/Levels/GreaterThan/6b.png",
                        fit: BoxFit.fill,),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    RaisedButton(
                      color: isWrong?Colors.redAccent:Colors.white,
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
                        "=",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    RaisedButton(
                      color: isRight?Colors.redAccent:Colors.white,
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
                        ">",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    RaisedButton(
                      color: isEqual?Colors.lightGreenAccent[700]:Colors.white,
                      onPressed: (){
                        setState(() {
                          isEqual = true;
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
                        "<",
                        style: TextStyle(
                            color: Colors.black,
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
  bool isEqual = false;
  int score = 0;
  @override
  Widget build(BuildContext context) {
    if(score == 0){
      return Scaffold(
          body: Container(
            padding: EdgeInsets.only(top: 300),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("Images/Levels/Equals/equals-full.png"),
                    fit: BoxFit.cover
                )
            ),
            child: Column(
              children: <Widget>[
                Row(
                  children: [
                    Container(
                      height: 150,
                      width: 100,
                      margin: EdgeInsets.all(10),
                      child: Image.asset("Images/Levels/Equals/1i.png",
                        fit: BoxFit.fill,),

                    ),
                    Container(
                        margin: EdgeInsets.all(10),
                        height: 150,
                        width: 100,
                        padding: EdgeInsets.all(10),
                        color: Colors.white,
                        child: Center(
                          child: Text(
                            "?",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 50
                            ),
                          ),)
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      height: 150,
                      width: 100,
                      child: Image.asset("Images/Levels/Equals/1.png",
                        fit: BoxFit.fill,),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    RaisedButton(
                      color: isWrong?Colors.lightGreenAccent[700]:Colors.white,
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
                        "=",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    RaisedButton(
                      color: isRight?Colors.redAccent:Colors.white,
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
                        ">",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    RaisedButton(
                      color: isEqual?Colors.redAccent:Colors.white,
                      onPressed: (){
                        setState(() {
                          isEqual = true;
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
                        "<",
                        style: TextStyle(
                            color: Colors.black,
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
  bool isEqual = false;
  int score = 0;
  @override
  Widget build(BuildContext context) {
    if(score == 0){
      return Scaffold(
          body: Container(
            padding: EdgeInsets.only(top: 300),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("Images/Levels/Equals/equals-full.png"),
                    fit: BoxFit.cover
                )
            ),
            child: Column(
              children: <Widget>[
                Row(
                  children: [
                    Container(
                      height: 150,
                      width: 100,
                      margin: EdgeInsets.all(10),
                      child: Image.asset("Images/Levels/GreaterThan/4b.png",
                        fit: BoxFit.fill,),

                    ),
                    Container(
                        margin: EdgeInsets.all(10),
                        height: 150,
                        width: 100,
                        padding: EdgeInsets.all(10),
                        color: Colors.white,
                        child: Center(
                          child: Text(
                            "?",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 50
                            ),
                          ),)
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      height: 150,
                      width: 100,
                      child: Image.asset("Images/Levels/GreaterThan/2b.png",
                        fit: BoxFit.fill,),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    RaisedButton(
                      color: isWrong?Colors.redAccent:Colors.white,
                      onPressed: (){
                        setState(() {
                          isWrong = true;
                        });

                      },
                      child: Text(
                        "=",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    RaisedButton(
                      color: isRight?Colors.lightGreenAccent[700]:Colors.white,
                      onPressed: (){
                        setState(() {
                          isRight = true;
                        });



                      },
                      child: Text(
                        ">",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    RaisedButton(
                      color: isEqual?Colors.redAccent:Colors.white,
                      onPressed: (){
                        setState(() {
                          isEqual = true;
                        });
                      },
                      child: Text(
                        "<",
                        style: TextStyle(
                            color: Colors.black,
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
                        Navigator.pop(context);
                        Navigator.of(context).push(new MaterialPageRoute(
                            builder: (BuildContext context) =>Route1(
                            )));
                      },),
                    FloatingActionButton(
                      heroTag: "btn2",
                      child: Icon(Icons.arrow_back_ios),
                      onPressed: (){
                        Navigator.of(context).pop(new MaterialPageRoute(
                            builder: (BuildContext context) =>Levels(
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