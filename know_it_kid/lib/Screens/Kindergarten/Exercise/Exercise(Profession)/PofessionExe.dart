import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dart:math';
import 'RandomPairGenerator.dart';
import 'DragginMech.dart';

class ProfessionExe extends StatefulWidget {
  @override
  int max ;
  int min ;
  ProfessionExe({this.min, this.max});
  _ProfessionExeState createState() => _ProfessionExeState(
    max: max,
    min: min,
  );
}

class _ProfessionExeState extends State<ProfessionExe> {
  int seed = 5;
  List<Widget> alpha = new List();
  List<Widget> targets = new List();
  static Random rand = new Random();
   int max ;
   int min ;
  _ProfessionExeState({this.max, this.min});
  buildList() async {
    for(int i = 0; i < 4;i++){
      var element = AlphaList[i];
      alpha.add(drag(
        alphabet: element["alpha"],
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
                image: AssetImage("Images/ProfessionBG.png"),
                fit: BoxFit.fill,
              )
          ),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Container(
                    height: 120,
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
                            builder: (BuildContext context) =>ProfessionExe()));
                        Navigator.of(context).push(new MaterialPageRoute(
                            builder: (BuildContext context) =>ProfessionExe(
                              min: 0,
                              max: 5,
                            )));
                      });
                    },
                  )

                ],
              )
            ],
          )
        )
    );
  }
}


