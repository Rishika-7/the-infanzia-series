import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';


class vegetable extends StatefulWidget {
  @override
  _vegetableState createState() => _vegetableState();
}

class _vegetableState extends State<vegetable> {
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
                    image: AssetImage("Images/VegetablesBG.png"),
                    fit: BoxFit.cover
                )
            ),
            child: Column(
              children: <Widget>[
                Container(

                  padding: EdgeInsets.only(left: 20, right: 20, bottom: 50,top: 140),
                  child: Image.asset("Images/Vegetable/carrot.gif",
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
                        "Orange",
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
                        "Carrot",
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
                  image: AssetImage("Images/VegetablesBG.png"),
                  fit: BoxFit.cover
              )
          ),
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.fromLTRB(20, 130, 20, 20),
                color: Colors.amber,
                padding: EdgeInsets.only(left: 20, right: 20, bottom: 50,top: 140),
                child: Image.asset(
                    "Images/Vegetable/cauliflower.gif"),
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
                      "Cauliflower",
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
                  image: AssetImage("Images/VegetablesBG.png"),
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
                child: Image.asset("Images/Vegetable/tomato.gif"),
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
                      "Tomato",
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
                      "Onion",
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
                  image: AssetImage("Images/VegetablesBG.png"),
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
                child: Image.asset(
                    "Images/Vegetable/onion.gif",
                height: 270,),
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
                      "Onion",
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
                      "Ginger",
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
                  image: AssetImage("Images/VegetablesBG.png",
                  ),
                  fit: BoxFit.cover
              )
          ),
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.fromLTRB(20, 130, 20, 20),
                color: Colors.blueAccent,
                padding: EdgeInsets.only(left: 20, right: 20, bottom: 50,top: 140),
                child: Image.asset("Images/Vegetable/potato.gif",
                  height: 180,
                  width: 258,),
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
                      "Potato",
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
                      "Tomato",
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
                          builder: (BuildContext context) =>vegetable(
                          )));
                    },),
                  FloatingActionButton(
                    heroTag: "btn2",
                    child: Icon(Icons.arrow_back_ios),
                    onPressed: (){
                      Navigator.pop(context);
                      Navigator.of(context).push(new MaterialPageRoute(
                          builder: (BuildContext context) =>vegetable(
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
                  image: AssetImage("Images/VegetablesBG.png"),
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
                child: Image.asset(
                    "Images/Vegetable/spinach.jpg"),
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
                      "Spinach",
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
                      "Garlic",
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



