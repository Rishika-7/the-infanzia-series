import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';


class animalsExe extends StatefulWidget {
  @override
  _animalsExeState createState() => _animalsExeState();
}

class _animalsExeState extends State<animalsExe> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("Images/AnimalsBG.png"),
                fit: BoxFit.fill,
              )
          ),
          child:Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Container(
                    height: 100,
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
                    img: "Images/Animals/prision.jpg",
                  word: "Pet",)
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Target(
                    type: "ot",
                    img: "Images/Animals/prision.jpg",
                    word: "Wild",
                  ) ,
                  Container(
                    height: 150,
                  ),
                  Target(
                    type: "at",
                    img: "Images/Animals/prision.jpg",
                    word: "Water",
                  ) ,
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  FloatingActionButton(
                    child: Icon(Icons.refresh),
                    onPressed: (){
                      Navigator.of(context).pop(new MaterialPageRoute(
                          builder: (BuildContext context) =>animalsExe()));
                      Navigator.of(context).push(new MaterialPageRoute(
                          builder: (BuildContext context) =>animalsExe(
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
      margin: EdgeInsets.all(20),
      decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(img),
            fit: BoxFit.cover
          )
      ),
      height: 85,
      width: 120,
      child: Center(
        child: Text(
          word.toUpperCase(),
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 36
          ),
        ),
      ),
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
                height: 85,
                width: 120,
                child: Image.asset("Images/Animals/mermaid.png"),
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
          padding: EdgeInsets.fromLTRB(25, 25, 25, 25),
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
          img: "Images/Animals/dog.png",

        ),
        drag(
          word:  " " + words[3 + rand.nextInt(3)].toUpperCase(),
          type: "at",
          color: Colors.amber,
          img: "Images/Animals/dolphin.png",
        ),
        drag(
          word:  words[6 + rand.nextInt(2)].toUpperCase(),
          type: "ot",
          color: Colors.orange,
          img: "Images/Animals/zebra.png",
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
          img: "Images/Animals/rabbit.png",
        ),
        drag(
          word:  words[3 + rand.nextInt(3)].toUpperCase(),
          type: "ot",
          color: Colors.green,
          img: "Images/Animals/elephant.png",
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
          img: "Images/Animals/fish.png",
        ),
        drag(
          word:  words[3 + rand.nextInt(2)].toUpperCase(),
          type: "ot",
          color: Colors.amber,
          img: "Images/Animals/lion.png",
        ),
        drag(
          word:  words[5 + rand.nextInt(2)].toUpperCase(),
          type: "all",
          color: Colors.orange,
          img: "Images/Animals/cat.png",
        ),

      ],
    );
  }
}
