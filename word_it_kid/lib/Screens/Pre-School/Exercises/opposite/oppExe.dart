import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'dart:math';

import 'DragginMech.dart';
import 'RandomPairGenerator.dart';



class OppExe extends StatefulWidget {
  @override
  int max ;
  int min ;
  OppExe({this.min, this.max});
  _OppExeState createState() => _OppExeState(
    max: max,
    min: min,
  );
}

class _OppExeState extends State<OppExe> {
  int seed = 5;
  List<Widget> alpha = new List();
  List<Widget> targets = new List();
  static Random rand = new Random();
  int max ;
  int min ;
  _OppExeState({this.max, this.min});

  buildList() async {
    for(int i = 0; i < 4;i++){
      var element = AlphaList[min + rand.nextInt(max - min)];
      alpha.add(drag(
        img: element["alpha"],
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
                  image: AssetImage("Images/seasons/rain-bg.png"),
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
                      child: Container(
                        color: Colors.white30,
                        margin: EdgeInsets.all(5),
                        child: Column(
                          children: alpha..shuffle(Random(seed)),
                        ),

                      ),
                    ),
                    Expanded(
                      flex: 5,
                      child: Container(
                        margin: EdgeInsets.all(5),
                        color: Colors.white30,
                        child: Column(
                            children: targets,
                          ),

                      ),
                    ),
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
                      backgroundColor: Colors.blueGrey,
                      onPressed: (){
                        setState(() {
                          seed++;
                          max = 5;
                          min = 0;
                          Navigator.of(context).pop(new MaterialPageRoute(
                              builder: (BuildContext context) =>OppExe()));
                          Navigator.of(context).push(new MaterialPageRoute(
                              builder: (BuildContext context) =>OppExe(
                                min: 0,
                                max: 5,
                              ),
                          ),
                          );
                        }
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


