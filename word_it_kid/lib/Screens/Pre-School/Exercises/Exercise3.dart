import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Exercise3 extends StatefulWidget {
  @override
  _Exercise3State createState() => _Exercise3State();
}

class _Exercise3State extends State<Exercise3> {
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
              Row(
                children: <Widget>[
                  Container(
                    height: 75,
                    width: 100,
                  ),
                ],
              ),
              row1(),
              row2(),
              row3(),
              Row(
                children: <Widget>[
                  Container(height: 100,
                    width: 100,),
                  Target(type: "an",
                    imageurl: "Images/ExerciseImages/ball.png",)
                ],
              ),
              Row(
                children: <Widget>[
                  Target(
                    type: "ot",
                    imageurl: "Images/ExerciseImages/teddyBear.png",
                  ) ,
                  Container(
                    height: 150,
                    width: 50,
                  ),
                  Target(
                    type: "ar",
                    imageurl: "Images/ExerciseImages/blocks.png",
                  ) ,
                ],
              ),
              Row(
                children: <Widget>[
                  FloatingActionButton(
                    child: Icon(Icons.refresh),
                    onPressed: (){
                      Navigator.of(context).pop(new MaterialPageRoute(
                          builder: (BuildContext context) =>Exercise3()));
                      Navigator.of(context).push(new MaterialPageRoute(
                          builder: (BuildContext context) =>Exercise3(
                          )));
                    },)
                ],
              )
            ],
          )
      ),
    );
  }
}


class Target extends StatefulWidget {
  String type;
  String word;
  String imageurl;
  Target({this.type, this.word, this.imageurl});
  @override
  _TargetState createState() => _TargetState(word, type, imageurl);
}
class _TargetState extends State<Target> {
  String type;
  String word;
  String imageurl;
  int count;
  var res;
  _TargetState(this.word,this.type, this.imageurl){
    count = 0;
    res = Container(
        height: 150,
        width: 150,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("Images/ExerciseImages/giftBox.png")
            )
        ),
        padding: EdgeInsets.only(top: 75),
        child: Text(
          type.toUpperCase(),
          style: TextStyle(
              fontSize: 30,
              color: Colors.amber,
              fontWeight: FontWeight.bold
          ),
          textAlign: TextAlign.center,)
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
            if(count == 3 || (count == 2 && type == "ar")){
              res = Container(
                height: 150,
                width: 150,
                child: Image.asset(imageurl),
              );
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
                image: AssetImage("Images/ExerciseImages/donut.png")
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
              color: Colors.brown[600],
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
                  image: AssetImage("Images/ExerciseImages/donut.png")
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
  List<String> words = ["Ran", "Fan", "Tan", "Car", "War", "Jar","Dot","Pot",
    "Rot",];
  static Random rand = new Random();
  Widget build(BuildContext context) {
    return  Row(
      children: <Widget>[
        drag(
          word: words[0 + rand.nextInt(2)].toUpperCase() ,
          type: "an",
          color: Colors.green,
        ),
        drag(
          word:  " " + words[3 + rand.nextInt(3)].toUpperCase(),
          type: "ar",
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
  List<String> words = ["Man", "Pan", "Can",  "Not","Got", "Hot",];
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
          type: "an",
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
  List<String> words = ["Bar", "Far", "Tar",  "Lot","Cot",
    "Van", "Nan"];
  static Random rand = new Random();
  Widget build(BuildContext context) {
    return  Row(
      children: <Widget>[
        drag(
          word: words[0 + rand.nextInt(2)].toUpperCase(),
          type: "ar",
          color: Colors.green,
        ),
        drag(
          word:  words[3 + rand.nextInt(2)].toUpperCase(),
          type: "ot",
          color: Colors.amber,
        ),
        drag(
          word:  words[5 + rand.nextInt(2)].toUpperCase(),
          type: "an",
          color: Colors.orange,
        ),

      ],
    );
  }
}
