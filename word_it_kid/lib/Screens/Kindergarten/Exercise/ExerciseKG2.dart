import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:worditkid/Screens/Kindergarten/levelsKG.dart';


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
              image: AssetImage("Images/seasons/autumn-bg.png"),
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
                child: Image.asset("Images/Action/run.gif",
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
                      "Sing",
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
                      "Run",
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
                  image: AssetImage("Images/seasons/autumn-bg.png"),
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
                child: Image.asset("Images/Action/drive.gif"),
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
                              builder: (context) => Route3(),
                            )
                        );
                      });

                    },
                    child: Text(
                      "Drive",
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
                      "Dance",
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
                  image: AssetImage("Images/seasons/autumn-bg.png"),
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
                child: Image.asset("Images/Action/eat.gif"),
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
                              builder: (context) => Route4(score: score ,),
                            )
                        );
                      });
                    },
                    child: Text(
                      "Eat",
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
                              builder: (context) => Route4(score: score,),
                            )
                        );
                      });
                    },
                    child: Text(
                      "Walk",
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
                  image: AssetImage("Images/seasons/autumn-bg.png",
                  ),
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
                child: Image.asset("Images/Action/jump.gif"),
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
                      "Jump",
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
                      "Sleep",
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
                          builder: (BuildContext context) => Levels()));
                    },),

                ],
              )
            ],
          ),
        )
    );
  }
}




