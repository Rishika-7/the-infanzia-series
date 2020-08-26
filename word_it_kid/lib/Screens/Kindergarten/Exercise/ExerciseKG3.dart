
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:worditkid/Screens/Kindergarten/levelsKG.dart';


class Exercise4 extends StatefulWidget {
  @override
  _Exercise4State createState() => _Exercise4State();
}


class _Exercise4State extends State<Exercise4> {
  Alphabet vowelA = Alphabet(alpha: "A", flag: true,);
  Alphabet vowelO = Alphabet(alpha: "O", flag: true,);
  Alphabet vowelI = Alphabet(alpha: "I", flag: true,);
  Alphabet vowelE = Alphabet(alpha: "E", flag: true,);
  Alphabet vowelU = Alphabet(alpha: "U", flag: true,);

  singleRock first = singleRock(icebreak: true,);
  singleRock second = singleRock(icebreak: true,);
  singleRock third = singleRock(icebreak: true,);
  singleRock fourth = singleRock(icebreak: true,);
  singleRock fifth = singleRock(icebreak: true,);

  Random rand = new Random(5);
  int seed = 6;
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("Images/seasons/winter-bg.png"),
              fit: BoxFit.fill,
            )
        ),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Container(
                  height: 100,
                )
              ],
            ),
            Row(
              children: <Widget>[
                Alphabet(alpha: "B", flag: true,),
                Alphabet(alpha: "D", flag: true,),
                Alphabet(alpha: "M", flag: true,),
                GestureDetector(
                  onTap: (){
                    setState(() {
                      vowelA = Alphabet(alpha: "A", flag: false,);
                      first  = singleRock(icebreak: false,
                        snowMan: "Images/ExerciseKGImages/Hat.png",);
                      count++;
                      if(count == 5){
                        Navigator.of(context).push(new MaterialPageRoute(
                            builder: (BuildContext context) => SnowMan()));
                        seed++;
                      }
                    });
                  },
                  child: vowelA,
                ) ,
                GestureDetector(
                  onTap: (){
                    setState(() {
                      vowelI = Alphabet(alpha: "I", flag: false,);
                      second = singleRock(icebreak: false,
                        snowMan: "Images/ExerciseKGImages/scarf.png",);
                      count++;
                      if(count == 5){
                        Navigator.of(context).push(new MaterialPageRoute(
                            builder: (BuildContext context) => SnowMan()));
                        seed++;
                      }
                    });
                  },
                  child: vowelI,
                )
              ]..shuffle(Random(seed)),
            ),
            Row(
              children: <Widget>[
                Alphabet(alpha: "J", flag: true,),
                Alphabet(alpha: "Q", flag: true,),
                Alphabet(alpha: "T", flag: true,),
                Alphabet(alpha: "L", flag: true,),
                GestureDetector(
                  onTap: (){
                    setState(() {
                      vowelU = Alphabet(alpha: "U", flag: false,);
                      third = singleRock(icebreak: false,
                        snowMan: "Images/ExerciseKGImages/carrot.png",
                      );
                      count++;
                      if(count == 5){
                        Navigator.of(context).push(new MaterialPageRoute(
                            builder: (BuildContext context) => SnowMan()));
                        seed++;
                      }
                    });
                  },
                  child: vowelU,
                )
              ]..shuffle(Random(seed)),
            ),
            Row(
              children: <Widget>[
                Alphabet(alpha: "F", flag: true,),
                Alphabet(alpha: "G", flag: true,),
                Alphabet(alpha: "H", flag: true,),
                GestureDetector(
                  onTap: (){
                    setState(() {
                      vowelO = Alphabet(alpha: "O", flag: false,);
                      fifth = singleRock(icebreak: false,
                        snowMan: "Images/ExerciseKGImages/Gloves.png",);
                      count++;
                      if(count == 5){
                        Navigator.of(context).push(new MaterialPageRoute(
                            builder: (BuildContext context) => SnowMan()));
                        seed++;
                      }
                    });
                  },
                  child: vowelO,
                ),
                GestureDetector(
                  onTap: (){
                    setState(() {
                      vowelE = Alphabet(alpha: "E", flag: false,);
                      fourth = singleRock(icebreak: false, snowMan: "Images/ExerciseKGImages/Branches.png",);
                      count++;
                      if(count == 5){
                        Navigator.of(context).push(new MaterialPageRoute(
                            builder: (BuildContext context) => SnowMan()));
                        seed++;
                      }});
                  },
                  child: vowelE,
                )
              ]..shuffle(Random(seed)),
            ),
            Row(
              children: <Widget>[
                adjusment,
                first,
                adjusment,
                second,
                adjusment
              ],
            ),
            Row(
              children: <Widget>[
                third,
                adjusment,
                fourth,
                adjusment,
                fifth
              ],
            )
          ],
        ),
      ),
    );
  }
}
Container adjusment = Container(
  height: 100,
  width: 72,
);
class singleRock extends StatelessWidget {
  bool  icebreak;
  String snowMan;
  singleRock({
    this.icebreak,
    this.snowMan
  });
  @override
  Widget build(BuildContext context) {
    if(icebreak){
      return Column(
        children: <Widget>[
          Container(
            height: 120,
            width: 72,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("Images/ExerciseKGImages/IceBlock.png")
                )
            ),
            child: Container(),
          )
        ],
      );
    }
    else{
      return Column(
        children: <Widget>[
          Container(
            height: 120,
            width: 72,
            child: Container(
              child: Image.asset(snowMan),
            ),
          )
        ],
      );
    }
  }
}

class Alphabet extends StatelessWidget {
  String alpha;
  bool flag;
  Alphabet({this.alpha, this.flag});
  @override
  Widget build(BuildContext context) {
    if(flag){
      return Container(
        padding: EdgeInsets.all(10),
        width: 72,
        height: 100,
        child: Text(
          alpha,
          style: TextStyle(
              fontSize: 50,
              color: Colors.white,
              fontWeight: FontWeight.bold
          ),
        ),
      );}
    else{
      return Container(
        padding: EdgeInsets.all(10),
        width: 72,
        height: 100,
        color: Colors.yellow,
        child: Text(
          alpha,
          style: TextStyle(
              fontSize: 50,
              fontWeight: FontWeight.bold,
              color: Colors.white
          ),
        ),
      );
    }
  }
}
class SnowMan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("Images/seasons/winter-bg.png"),
              fit: BoxFit.cover,
            )
        ),
        padding: EdgeInsets.only(top: 100),
        child: Column(
          children: <Widget>[
            Image.asset("Images/ExerciseKGImages/Snowman.gif"),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                FloatingActionButton(
                  heroTag: "btn1",
                  child: Icon(Icons.refresh),
                  onPressed: (){
                    Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) =>Exercise4(
                        )));
                  },),
                FloatingActionButton(
                  heroTag: "btn2",
                  child: Icon(Icons.arrow_back_ios),
                  onPressed: (){
                    Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) =>Levels(
                        )));
                  },),

              ],
            )
          ],
        )
    );
  }
}


