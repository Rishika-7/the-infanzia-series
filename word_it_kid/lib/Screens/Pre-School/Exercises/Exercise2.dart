import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/rendering.dart';

import '../levels.dart';
import 'Exercise3.dart';


AudioCache plyr = AudioCache();
class Exercise2 extends StatefulWidget {
  @override
  _Exercise2State createState() => _Exercise2State();
}

class _Exercise2State extends State<Exercise2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("Images/seasons/autumn-bg.png"),
            fit: BoxFit.cover,
          )
        ),

        child:Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 80),
              child: Column(
                children: <Widget>[

                  row1(),
                  row2(),
                  row3(),

                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Target(
                        type: "all",
                      )
                    ],
                  ),

                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Target(
                        type: "ot",
                      ) ,

                      Target(
                        type: "at",
                      ) ,
                    ],
                  ),

                  SizedBox(
                    height: 20,
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[

                      FloatingActionButton(
                        child: Icon(Icons.refresh),
                        backgroundColor: Colors.deepOrange,
                        heroTag: "ebtn1",
                        onPressed: (){
                          Navigator.of(context).pop(new MaterialPageRoute(
                              builder: (BuildContext context) =>Exercise2()));
                          Navigator.of(context).push(new MaterialPageRoute(
                              builder: (BuildContext context) =>Exercise2(
                              )));
                        },
                      ),

                      FloatingActionButton(
                        backgroundColor: Colors.deepOrange,
                        child: Icon(Icons.home),
                        heroTag: "ebtn3",
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context){
                            return Levels();
                          })
                          );
                        },
                      ),

                      FloatingActionButton(
                        backgroundColor: Colors.deepOrange,
                        child: Icon(Icons.arrow_forward),
                        heroTag: "ebtn2",
                        onPressed: () {
                          Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) {
                            return Exercise3(
                            );
                          })
                          );
                        },
                      ),

                    ],
                  ),
                ],
              ),
            ),


          ],
        )
      ),
    );
  }
}


class Target extends StatefulWidget {
  String type;
  String word;
  Target({this.type, this.word});
  @override
  _TargetState createState() => _TargetState(word, type);
}
class _TargetState extends State<Target> {
  String type;
  String word;
  int count;
  var res;
  _TargetState(this.word,this.type){
    count = 0;
    res = Container(
        height: 150,
        width: 150,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("Images/ExerciseImages/treasure.png")
          )
        ),
        padding: EdgeInsets.only(top: 20,
        left: 72),
        child: Text(
          type,
        style: TextStyle(
          fontSize: 30,
          color: Colors.amber,
          fontWeight: FontWeight.bold
        ),)
    );
  }
  @override

  Widget build(BuildContext context) {
    return DragTarget(
      builder: ( context,  List<String> data,  rejectedData) => res,
      onWillAccept: (data){
        return type == data;
      },
      onAccept: (data){
        if(data == type){
          setState(() {
            count += 1;
            if(count == 3 || (count == 2 && type == "at")){
              res = Container(
                height: 150,
                width: 150,
                child: Image.asset("Images/ExerciseImages/crown.gif"),
              );
              plyr.play('success.mp3');
            }
          },
          );
        }

      },
    );
  }
}

class drag extends StatefulWidget {
  @override
  String word;
  String type;
  Color color;
  drag({this.word, this.type, this.color});
  _dragState createState() => _dragState(word, type, color);
}

class _dragState extends State<drag> {
  @override
  String word;
  String type;
  Color color;
  var alpha;
  _dragState(this.word, this.type, this.color){
    alpha = Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("Images/ExerciseImages/coin.png")
        )
      ),
      height: 80,
        width: 120,
        padding: EdgeInsets.fromLTRB(0, 25, 0, 0),
        child: Text(
          word ,
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 18,
              color: Colors.white,
              fontWeight: FontWeight.bold
          ),
        ));
  }

  Widget build(BuildContext context) {
    return Draggable(
      child: alpha,
      feedback: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("Images/ExerciseImages/coin.png")
              )
          ),
          height: 80,
          width: 120,
          padding: EdgeInsets.fromLTRB(0, 25, 0, 0),
          child: Text(
            word ,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 18,
                color: Colors.white,
                fontWeight: FontWeight.bold
            ),
          )),
      data: type,
      childWhenDragging: Container(
        height: 80,
        width: 120,),
      onDragCompleted: () {
        setState(() {
          alpha = Container(
            height: 80,
            width: 120,);
        });
      },

    );
  }
}

class row1 extends StatelessWidget {
  @override
  List<String> words = ["Ball", "Mall", "Fall", "Rat", "Mat", "Cat","Dot","Pot",
    "Rot",];
  static Random rand = new Random();
  Widget build(BuildContext context) {
    return  Row(
      children: <Widget>[
        drag(
          word: words[0 + rand.nextInt(2)].toUpperCase() ,
          type: "all",
          color: Colors.green,
        ),
        drag(
          word:  " " + words[3 + rand.nextInt(3)].toUpperCase(),
          type: "at",
          color: Colors.amber,
        ),
        drag(
          word:  words[6 + rand.nextInt(2)].toUpperCase(),
          type: "ot",
          color: Colors.orange,
        )
      ],
    );
  }
}

class row2 extends StatelessWidget {
  @override
  List<String> words = ["Tall", "Call", "Hall",  "Not","Got", "Hot",];
  static Random rand = new Random();
  Widget build(BuildContext context) {
    return  Row(
      children: <Widget>[
        Container(
          height: 80,
          width: 60,
        ),
        drag(
          word: words[0 + rand.nextInt(2)].toUpperCase(),
          type: "all",
          color: Colors.orange,
        ),
        drag(
          word:  words[3 + rand.nextInt(3)].toUpperCase(),
          type: "ot",
          color: Colors.green,
        ),

      ],
    );
  }
}

class row3 extends StatelessWidget {
  @override
  List<String> words = ["Fat", "Pat", "Hat",  "Lot","Cot",
  "Wall", "Gall"];
  static Random rand = new Random();
  Widget build(BuildContext context) {
    return  Row(
      children: <Widget>[
        drag(
          word: words[0 + rand.nextInt(2)].toUpperCase(),
          type: "at",
          color: Colors.green,
        ),
        drag(
          word:  words[3 + rand.nextInt(2)].toUpperCase(),
          type: "ot",
          color: Colors.amber,
        ),
        drag(
          word:  words[5 + rand.nextInt(2)].toUpperCase(),
          type: "all",
          color: Colors.orange,
        ),

      ],
    );
  }
}
