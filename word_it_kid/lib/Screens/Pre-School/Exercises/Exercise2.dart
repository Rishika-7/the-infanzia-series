import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(
      MaterialApp(
        title: "Rhyming Words",
        home: Exercise2(),
      )
  );
}
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
            image: AssetImage("Images/autumn-bg.png"),
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
                Target(type: "all",)
              ],
            ),
            Row(
              children: <Widget>[
                Target(
                  type: "ot",
                ) ,
                Container(
                  height: 150,
                  width: 50,
                ),
                Target(
                  type: "at",
                ) ,
              ],
            ),
            Row(
              children: <Widget>[
                FloatingActionButton(
                  child: Icon(Icons.refresh),
                  onPressed: (){
                    Navigator.of(context).pop(new MaterialPageRoute(
                        builder: (BuildContext context) =>Exercise2()));
                    Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) =>Exercise2(
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
            image: AssetImage("Images/treasure.png")
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
                child: Image.asset("Images/crown.gif"),
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
          image: NetworkImage("https://www.pinclipart.com/picdir/big/210-2101979_gold-dollar-sign-clipart.png")
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
                  image: NetworkImage("https://www.pinclipart.com/picdir/big/210-2101979_gold-dollar-sign-clipart.png")
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
