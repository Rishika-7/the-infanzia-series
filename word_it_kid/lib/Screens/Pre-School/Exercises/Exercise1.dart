import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../levels.dart';
import 'DragginMech.dart';
import 'dart:math';
import 'RandomPairGenerator.dart';


// If you want to navigate to the Exercise page use the code given below.
// You are required to give the specified value to min and max parameters.
//Code
// onPressed: (){
//Navigator.of(context).push(new MaterialPageRoute(
//builder: (BuildContext context) =>Exercise(
//max: 5,
//min: 0,
//)));

class Exercise extends StatefulWidget {
  @override
  int max ;
  int min ;
  Exercise({this.min, this.max});
  _ExerciseState createState() => _ExerciseState(
    max: max,
    min: min,
  );
}

class _ExerciseState extends State<Exercise> {
  int seed = 5;
  List<Widget> alpha = new List();
  List<Widget> targets = new List();
  static Random rand = new Random();
   int max ;
   int min ;
  _ExerciseState({this.max, this.min});
  buildList() async {
    for(int i = 0; i < 5;i++){
      var element = AlphaList[min + rand.nextInt(max - min)];
      alpha.add(drag(
        alphabet: element["alpha"],
      ));
      targets.add(Target(
        alphabet: element["alpha"],
        imgURL: element["I"],
      ));
      max += 5;
      min += 5;
    }
  }
  void initState(){
    buildList();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("Images/seasons/summer-bg.png"),
                fit: BoxFit.fill,
              )
          ),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Container(
                    height: 100,
                    width: 100,
                  )
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    flex: 5,
                    child: Column(
                      children: alpha..shuffle(Random(seed)),
                    ),),
                  Expanded(
                    flex: 5,
                    child: Column(
                        children:targets
                    ),),
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
                    onPressed: (){
                      setState(() {
                        seed++;
                        max = 5;
                        min = 0;
                        Navigator.of(context).pop(new MaterialPageRoute(
                            builder: (BuildContext context) =>Exercise()));
                        Navigator.of(context).push(new MaterialPageRoute(
                            builder: (BuildContext context) =>Exercise(
                              min: 0,
                              max: 5,
                            )));
                      });
                    },
                  ),

                  FloatingActionButton(

                    child: Icon(Icons.home),
                    heroTag: "ebtn3",
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return Levels();
                      })
                      );
                    },
                  ),


                ],
              )
            ],
          )
        )
    );
  }
}


