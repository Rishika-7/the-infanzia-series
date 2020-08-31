import 'dart:math';
import 'package:countitkid/Screens/Kindergarten/kg_levels.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class SubstractionExe extends StatefulWidget {
  @override
  _SubstractionExeState createState() => _SubstractionExeState();
}

class _SubstractionExeState extends State<SubstractionExe> {
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
                    image: AssetImage("Images/Levels/Subtract/subtract-full.png"),
                    fit: BoxFit.fill
                )
            ),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 150,
                      width: 85,
                      margin: EdgeInsets.all(10),
                      child: Image.asset("Images/Levels/Equals/1.png",
                        fit: BoxFit.fill,),

                    ),
                    Container(
                        margin: EdgeInsets.all(10),
                        height: 150,
                        width: 60,
                        padding: EdgeInsets.all(10),
                        color: Colors.white,
                        child: Center(
                          child: Text(
                            "-",
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
                      width: 85,
                      child: Image.asset("Images/Levels/Equals/1.png",
                        fit: BoxFit.fill,),
                    ),
                    Container(
                        color: Colors.white,
                        height: 150,
                        width: 65,
                        child: Center(
                          child: Center(
                            child: Text("=",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontSize: 50
                              ),),
                          ),
                        )
                    ),

                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    RaisedButton(
                      color: isWrong?Colors.lightGreenAccent[700]:Colors.blue[100],
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
                        "0",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    RaisedButton(
                      color: isRight?Colors.redAccent:Colors.blue[100],
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
                        "8",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    RaisedButton(
                      color: isEqual?Colors.redAccent:Colors.blue[100],
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
                        "9",
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
                    image: AssetImage("Images/Levels/Subtract/subtract-full.png"),
                    fit: BoxFit.fill
                )
            ),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 150,
                      width: 85,
                      margin: EdgeInsets.all(10),
                      child: Image.asset("Images/Levels/Equals/3b.png",
                        fit: BoxFit.fill,),

                    ),
                    Container(
                        margin: EdgeInsets.all(10),
                        height: 150,
                        width: 60,
                        padding: EdgeInsets.all(10),
                        color: Colors.white,
                        child: Center(
                          child: Text(
                            "-",
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
                      width: 85,
                      child: Image.asset("Images/Levels/Equals/2.png",
                        fit: BoxFit.fill,),
                    ),
                    Container(
                        color: Colors.white,
                        height: 150,
                        width: 65,
                        child: Center(
                          child: Center(
                            child: Text("=",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontSize: 50
                              ),),
                          ),
                        )
                    ),

                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    RaisedButton(
                      color: isWrong?Colors.redAccent:Colors.blue[100],
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
                        "6",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    RaisedButton(
                      color: isRight?Colors.lightGreenAccent[700]:Colors.blue[100],
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
                        "1",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    RaisedButton(
                      color: isEqual?Colors.redAccent:Colors.blue[100],
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
                        "8",
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
                    image: AssetImage("Images/Levels/Subtract/subtract-full.png"),
                    fit: BoxFit.fill
                )
            ),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 150,
                      width: 85,
                      margin: EdgeInsets.all(10),
                      child: Image.asset("Images/Levels/GreaterThan/3b.png",
                        fit: BoxFit.fill,),

                    ),
                    Container(
                        margin: EdgeInsets.all(10),
                        height: 150,
                        width: 60,
                        padding: EdgeInsets.all(10),
                        color: Colors.white,
                        child: Center(
                          child: Text(
                            "-",
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
                      width: 85,
                      child: Image.asset("Images/Levels/GreaterThan/1b.png",
                        fit: BoxFit.fill,),
                    ),
                    Container(
                        color: Colors.white,
                        height: 150,
                        width: 65,
                        child: Center(
                          child: Center(
                            child: Text("=",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontSize: 50
                              ),),
                          ),
                        )
                    ),

                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    RaisedButton(
                      color: isWrong?Colors.redAccent:Colors.blue[100],
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
                        "5",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    RaisedButton(
                      color: isRight?Colors.redAccent:Colors.blue[100],
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
                        "9",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    RaisedButton(
                      color: isEqual?Colors.lightGreenAccent[700]:Colors.blue[100],
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
                        "2",
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
                    image: AssetImage("Images/Levels/Subtract/subtract-full.png"),
                    fit: BoxFit.fill
                )
            ),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 150,
                      width: 85,
                      margin: EdgeInsets.all(10),
                      child: Image.asset("Images/Levels/LessThan/5p.png",
                        fit: BoxFit.fill,),

                    ),
                    Container(
                        margin: EdgeInsets.all(10),
                        height: 150,
                        width: 60,
                        padding: EdgeInsets.all(10),
                        color: Colors.white,
                        child: Center(
                          child: Text(
                            "-",
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
                      width: 85,
                      child: Image.asset("Images/Levels/LessThan/3p.png",
                        fit: BoxFit.fill,),
                    ),
                    Container(
                        color: Colors.white,
                        height: 150,
                        width: 65,
                        child: Center(
                          child: Center(
                            child: Text("=",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontSize: 50
                              ),),
                          ),
                        )
                    ),

                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    RaisedButton(
                      color: isWrong?Colors.lightGreenAccent[700]:Colors.blue[100],
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
                        "2",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    RaisedButton(
                      color: isRight?Colors.redAccent:Colors.blue[100],
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
                        "6",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    RaisedButton(
                      color: isEqual?Colors.redAccent:Colors.blue[100],
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
                        "3",
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
                    image: AssetImage("Images/Levels/Subtract/subtract-full.png"),
                    fit: BoxFit.fill
                )
            ),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 150,
                      width: 85,
                      margin: EdgeInsets.all(10),
                      child: Image.asset("Images/Levels/LessThan/8f.png",
                        fit: BoxFit.fill,),

                    ),
                    Container(
                        margin: EdgeInsets.all(10),
                        height: 150,
                        width: 60,
                        padding: EdgeInsets.all(10),
                        color: Colors.white,
                        child: Center(
                          child: Text(
                            "-",
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
                      width: 85,
                      child: Image.asset("Images/Levels/LessThan/4f.png",
                        fit: BoxFit.fill,),
                    ),
                    Container(
                        color: Colors.white,
                        height: 150,
                        width: 65,
                        child: Center(
                          child: Center(
                            child: Text("=",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontSize: 50
                              ),),
                          ),
                        )
                    ),

                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    RaisedButton(
                      color: isWrong?Colors.redAccent:Colors.blue[100],
                      onPressed: (){
                        setState(() {
                          isWrong = true;
                        });

                      },
                      child: Text(
                        "8",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    RaisedButton(
                      color: isRight?Colors.lightGreenAccent[700]:Colors.blue[100],
                      onPressed: (){
                        setState(() {
                          isRight = true;
                        });



                      },
                      child: Text(
                        "4",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    RaisedButton(
                      color: isEqual?Colors.redAccent:Colors.blue[100],
                      onPressed: (){
                        setState(() {
                          isEqual = true;
                        });
                      },
                      child: Text(
                        "5",
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
                            builder: (BuildContext context) =>SubstractionExe(
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