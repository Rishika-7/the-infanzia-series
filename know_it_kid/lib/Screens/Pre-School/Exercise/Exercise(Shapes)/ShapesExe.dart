import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dart:math';
import 'DragginMech.dart';
import 'RandomPairGenerator.dart';

class ShapesExe extends StatefulWidget {
  @override
  int max ;
  int min ;
  ShapesExe({this.min, this.max});
  _ShapesExeState createState() => _ShapesExeState(
    max: max,
    min: min,
  );
}

class _ShapesExeState extends State<ShapesExe> {
  int seed = 5;
  List<Widget> alpha = new List();
  List<Widget> targets = new List();
  static Random rand = new Random();
  int max ;
  int min ;
  _ShapesExeState({this.max, this.min});

  buildList() async {
    for(int i = 0; i < 4;i++){
      var element = AlphaList[i];
      alpha.add(drag(
        img: element["alpha"],
      ));
      targets.add(Target(
        alphabet: element["alpha"],
        imgURL: element["I"],
      ));

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
                  image: AssetImage("Images/ShapesBG.png"),
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
                      heroTag: "1",
                      child: Icon(Icons.refresh),
                      backgroundColor: Colors.blueGrey,
                      onPressed: (){
                        setState(() {
                          seed++;
                          max = 5;
                          min = 0;
                          Navigator.of(context).pop(new MaterialPageRoute(
                              builder: (BuildContext context) =>ShapesExe()));
                          Navigator.of(context).push(new MaterialPageRoute(
                              builder: (BuildContext context) =>ShapesExe(
                                min: 0,
                                max: 5,
                              ),
                          ),
                          );
                        }
                        );
                      },
                    ),

                    FloatingActionButton(
                      heroTag: "2",
                      backgroundColor: Colors.blueGrey,
                      child: Icon(Icons.help),
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: Text('How to Play?',
                                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                                content: Text(
                                  'Match the similar words!\n\n'
                                      'Just Drag and Drop 👆➡✔',
                                  style: TextStyle(fontSize: 20),
                                ),
                                actions: <Widget>[
                                  FlatButton(
                                    child: Text(
                                      "Let's Play!",
                                      style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                                    ),
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                  )
                                ],
                              );
                            });
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


