import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:knowitkid/Screens/Pre-School/levelsPS.dart';

void main() {
  runApp(
      MaterialApp(
        title: "Rhyming Words",
        home: Route1(),
      )
  );
}
class Route1 extends StatefulWidget {
  @override
  _Route1State createState() => _Route1State();
}

class _Route1State extends State<Route1> {
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
                    image: AssetImage("Images/FruitsBG.png"),
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
                  child: Image.asset("Images/Fruits/orange.gif",
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
                                builder: (context) => Route2(score: score,),
                              )
                          );
                        });


                      },
                      child: Text(
                        "Apple",
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
                          Navigator.pop(context);
                          Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => Route2(score: score + 1,),
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
                  image: AssetImage("Images/FruitsBG.png"),
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
                    "Images/Fruits/apple.gif"),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  RaisedButton(
                    color: isWrong?Colors.lightGreenAccent[700]:Colors.orange,
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
                      "Apple",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                  RaisedButton(
                    color: isRight?Colors.redAccent:Colors.orange,
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
                      "Watermelon",
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
                  image: AssetImage("Images/FruitsBG.png"),
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
                child: Image.asset("Images/Fruits/banana.gif"),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  RaisedButton(
                    color: isRight?Colors.lightGreenAccent[700]:Colors.orange,
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
                      "Banana",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                  RaisedButton(
                    color: isWrong? Colors.red[900]: Colors.orange,
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
                      "Orange",
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
                  image: AssetImage("Images/FruitsBG.png"),
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
                    "Images/Fruits/strawberry.gif"),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  RaisedButton(
                    color: isWrong?Colors.lightGreenAccent[700]:Colors.orange,
                    onPressed: (){
                      setState(() {
                        isWrong = true;
                      });
                      Future.delayed(const Duration(seconds: 2),(){
                        Navigator.pop(context);
                        Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => Route6(score: score,),
                            )
                        );
                      });

                    },
                    child: Text(
                      "Strawberry",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                  RaisedButton(
                    color: isRight?Colors.redAccent:Colors.orange,
                    onPressed: (){
                      setState(() {
                        isRight = true;
                      });
                      Future.delayed(const Duration(seconds: 2),(){
                        Navigator.pop(context);
                        Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => Route6(score: score,),
                            )
                        );
                      });


                    },
                    child: Text(
                      "Watermelon",
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
                  image: AssetImage("Images/FruitsBG.png",
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
                child: Image.asset("Images/Fruits/grapes.gif"),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  RaisedButton(
                    color: isRight? Colors.lightGreen[600]: Colors.orange,
                    onPressed: (){
                      setState(() {
                        isRight = true;
                      });

                    },
                    child: Text(
                      "Grapes",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                  RaisedButton(
                    color: isWrong? Colors.red[900] : Colors.orange,
                    onPressed: (){
                      setState(() {
                        isWrong = true;
                      });

                    },
                    child: Text(
                      "Orange",
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
                          builder: (BuildContext context) =>Route1(
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

class Route6 extends StatefulWidget {
  @override
  int score;
  Route6({this.score});
  _Route6State createState() => _Route6State(score: score);
}

class _Route6State extends State<Route6> {
  int score;
  _Route6State({this.score});
  bool isRight = false;
  bool isWrong = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("Images/FruitsBG.png"),
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
                    "Images/Fruits/watermelons.gif"),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  RaisedButton(
                    color: isWrong?Colors.lightGreenAccent[700]:Colors.orange,
                    onPressed: (){
                      setState(() {
                        isWrong = true;
                      });
                      Future.delayed(const Duration(seconds: 2),(){
                        Navigator.pop(context);
                        Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => Route4(score: score ,),
                            )
                        );
                      });

                    },
                    child: Text(
                      "Watermelon",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                  RaisedButton(
                    color: isRight?Colors.redAccent:Colors.orange,
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
                      "Kiwi",
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



