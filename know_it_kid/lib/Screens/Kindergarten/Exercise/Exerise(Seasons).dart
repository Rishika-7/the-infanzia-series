import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';


class SeasonsExe extends StatefulWidget {
  @override
  _SeasonsExeState createState() => _SeasonsExeState();
}

class _SeasonsExeState extends State<SeasonsExe> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("Images/SeasonsBG.png"),
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
                  Target(type: "all",
                  img: "Images/summer_b.png",)
                ],
              ),
              Row(
                children: <Widget>[
                  Target(
                    type: "ot",
                    img: "Images/winter_b.png",

                  ) ,
                  Container(
                    height: 150,
                    width: 50,
                  ),
                  Target(
                    type: "at",
                    img: "Images/rainy_b.png",
                  ) ,
                ],
              ),
              Row(
                children: <Widget>[
                  FloatingActionButton(
                    child: Icon(Icons.refresh),
                    onPressed: (){
                      Navigator.of(context).pop(new MaterialPageRoute(
                          builder: (BuildContext context) =>SeasonsExe()));
                      Navigator.of(context).push(new MaterialPageRoute(
                          builder: (BuildContext context) =>SeasonsExe(
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
  String img;
  Target({this.type, this.word,this.img});
  @override
  _TargetState createState() => _TargetState(word, type, img);
}
class _TargetState extends State<Target> {
  String type;
  String word;
  int count;
  String img;
  var res;
  _TargetState(this.word,this.type,this.img){
    count = 0;
    res = Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle
        ),
        height: 150,
        width: 150,
        child: Image.asset(img),
        padding: EdgeInsets.only(top: 20,),
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
                child: Image.asset("Images/Seasons/pearl.png"),
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
  String img;
  drag({this.word, this.type, this.color,this.img});
  _dragState createState() => _dragState(word, type, color,img);
}

class _dragState extends State<drag> {
  @override
  String img;
  String word;
  String type;
  Color color;
  var alpha;
  _dragState(this.word, this.type, this.color,this.img){
    alpha = Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.lightBlueAccent,
        ),
        height: 80,
        width: 120,
        padding: EdgeInsets.all(10),
        child: Image.asset(img));
  }

  Widget build(BuildContext context) {
    return Draggable(
      child: alpha,
      feedback: Container(
          height: 80,
          width: 120,
          padding: EdgeInsets.fromLTRB(0, 25, 0, 0),
          child: Image.asset(img)),
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
          img: "Images/Seasons/beach.png",

        ),
        drag(
          word:  " " + words[3 + rand.nextInt(3)].toUpperCase(),
          type: "at",
          color: Colors.amber,
          img: "Images/Seasons/raincoat.png",
        ),
        drag(
          word:  words[6 + rand.nextInt(2)].toUpperCase(),
          type: "ot",
          color: Colors.orange,
          img: "Images/Seasons/bonfire.png",
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
          img: "Images/Seasons/icecream.png",
        ),
        drag(
          word:  words[3 + rand.nextInt(3)].toUpperCase(),
          type: "ot",
          color: Colors.green,
          img: "Images/Seasons/sking.png",
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
          img: "Images/Seasons/Umbrella.png",
        ),
        drag(
          word:  words[3 + rand.nextInt(2)].toUpperCase(),
          type: "ot",
          color: Colors.amber,
          img: "Images/Seasons/tea.png",
        ),
        drag(
          word:  words[5 + rand.nextInt(2)].toUpperCase(),
          type: "all",
          color: Colors.orange,
          img: "Images/Seasons/colddrink.png",
        ),

      ],
    );
  }
}
