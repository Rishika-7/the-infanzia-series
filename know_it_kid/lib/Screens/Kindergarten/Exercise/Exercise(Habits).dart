import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:knowitkid/Screens/Pre-School/levelsPS.dart';

void main() {
  runApp(
      MaterialApp(
        title: "Rhyming Words",
        home: HabitsExe(),
      )
  );
}
class HabitsExe extends StatefulWidget {
  @override
  _HabitsExeState createState() => _HabitsExeState();
}

class _HabitsExeState extends State<HabitsExe> {
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
                    image: AssetImage("Images/GoodhabitsBG.png"),
                    fit: BoxFit.fill
                )
            ),
            child: Column(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(60)),
                  ),
                  padding: EdgeInsets.only(left: 20, right: 20, bottom: 50,top: 140),
                  child: Image.asset("Images/Habits/BrushTeeth.jpg",
                    height: 250,
                    width: 250,
                    fit: BoxFit.fill,),
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
                        Future.delayed(const Duration(seconds: 2),(){
                          Navigator.pop(context);
                          Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => Route2(score: score,),
                              )
                          );
                        });


                      },
                      child: Text(
                        "Bad",
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
                                builder: (context) => Route2(score: score + 1,),
                              )
                          );
                        });


                      },
                      child: Text(
                        "Good",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    )

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
  int score;
  Route2({this.score});
  _Route2State createState() => _Route2State(score: score);
}

class _Route2State extends State<Route2> {
  int score;
  _Route2State({this.score});
  bool isRight = false;
  bool isWrong = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("Images/GoodhabitsBG.png"),
                  fit: BoxFit.fill
              )
          ),
          child: Column(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(60)),
                ),
                padding: EdgeInsets.only(left: 20, right: 20, bottom: 50,top: 140),
                child: Image.asset(
                    "Images/Habits/EatJunk.jpg",
                height: 250,
                width: 250,),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  RaisedButton(
                    color: isWrong?Colors.lightGreenAccent[700]:Colors.blue,
                    onPressed: (){
                      setState(() {
                        isWrong = true;
                      });
                      Future.delayed(const Duration(seconds: 2),(){
                        Navigator.pop(context);
                        Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => Route3(score: score + 5,),
                            )
                        );
                      });

                    },
                    child: Text(
                      "Bad",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                  RaisedButton(
                    color: isRight?Colors.redAccent:Colors.blue,
                    onPressed: (){
                      setState(() {
                        isRight = true;
                      });
                      Future.delayed(const Duration(seconds: 2),(){
                        Navigator.pop(context);
                        Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => Route3(score: score,),
                            )
                        );
                      });


                    },
                    child: Text(
                      "Good",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  )

                ],
              )
            ],
          ),
        )
    );
  }
}


class Route3 extends StatefulWidget {
  int score;
  Route3({this.score});
  @override
  _Route3State createState() => _Route3State();
}

class _Route3State extends State<Route3> {
  int score;
  _Route3State({this.score});
  bool isRight = false;
  bool isWrong = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("Images/GoodhabitsBG.png"),
                  fit: BoxFit.fill
              )
          ),
          child: Column(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(60)),
                ),
                padding: EdgeInsets.only(left: 20, right: 20, bottom: 50,top: 140),
                child: Image.asset("Images/Habits/sleepAtTime.jpg",
                  height: 250,
                  width: 250,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
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
                              builder: (context) => Route5(score: score ,),
                            )
                        );
                      });
                    },
                    child: Text(
                      "Good",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                  RaisedButton(
                    color: isWrong? Colors.red[900]: Colors.blue,
                    onPressed: () async {
                      setState(() {
                        isWrong = true;
                      });

                      Future.delayed(const Duration(seconds: 2),(){
                        Navigator.pop(context);
                        Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => Route5(score: score,),
                            )
                        );
                      });
                    },
                    child: Text(
                      "Bad",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  )

                ],
              )
            ],
          ),
        )
    );
  }
}

class Route5 extends StatefulWidget {
  @override
  int score;
  Route5({this.score});
  _Route5State createState() => _Route5State(score: score);
}

class _Route5State extends State<Route5> {
  int score;
  _Route5State({this.score});
  bool isRight = false;
  bool isWrong = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("Images/GoodhabitsBG.png"),
                  fit: BoxFit.fill
              )
          ),
          child: Column(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(60)),
                ),
                padding: EdgeInsets.only(left: 20, right: 20, bottom: 30,top: 140),
                child: Image.asset(
                    "Images/Habits/Teasing.jpg",
                fit: BoxFit.fill,
                height: 280,
                width: 250,),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  RaisedButton(
                    color: isWrong?Colors.lightGreenAccent[700]:Colors.blue,
                    onPressed: (){
                      setState(() {
                        isWrong = true;
                      });
                      Future.delayed(const Duration(seconds: 2),(){
                        Navigator.pop(context);
                        Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => Route4(score: score,),
                            )
                        );
                      });

                    },
                    child: Text(
                      "Bad",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                  RaisedButton(
                    color: isRight?Colors.redAccent:Colors.blue,
                    onPressed: (){
                      setState(() {
                        isRight = true;
                      });
                      Future.delayed(const Duration(seconds: 2),(){
                        Navigator.pop(context);
                        Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => Route4(score: score,),
                            )
                        );
                      });


                    },
                    child: Text(
                      "Good",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  )

                ],
              )
            ],
          ),
        )
    );
  }
}


class Route4 extends StatefulWidget {
  int score;
  Route4({this.score});
  @override
  _Route4State createState() => _Route4State();
}

class _Route4State extends State<Route4> {
  int score;
  _Route4State({this.score});
  bool isRight = false;
  bool isWrong = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("Images/GoodhabitsBG.png",
                  ),
                  fit: BoxFit.fill
              )
          ),
          child: Column(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(60)),
                ),
                padding: EdgeInsets.only(left: 20, right: 20, bottom: 50,top: 140),
                child: Image.asset("Images/Habits/studying.jpg",
                height: 250,
                width: 250,),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  RaisedButton(
                    color: isRight? Colors.lightGreen[600]: Colors.blue,
                    onPressed: (){
                      setState(() {
                        isRight = true;
                      });

                    },
                    child: Text(
                      "Good",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                  RaisedButton(
                    color: isWrong? Colors.red[900] : Colors.blue,
                    onPressed: (){
                      setState(() {
                        isWrong = true;
                      });

                    },
                    child: Text(
                      "Bad",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  )

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
                          builder: (BuildContext context) =>HabitsExe(
                          )));
                    },),
                  FloatingActionButton(
                    heroTag: "btn2",
                    child: Icon(Icons.arrow_back_ios),
                    onPressed: (){
                      Navigator.of(context).pop(new MaterialPageRoute(
                          builder: (BuildContext context) =>PSLevels(
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


