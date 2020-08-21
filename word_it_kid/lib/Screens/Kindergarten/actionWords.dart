import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/rendering.dart';

class ActionWords extends StatefulWidget {
  @override
  HomePage createState() => HomePage();
}

class HomePage extends State<ActionWords> {

  List<Container> namingList = new List();

  var inputs = [
    {"Image1" : "Images/Action/run.png", "Image2" : "Images/Action/run.gif"},
    {"Image1" : "Images/Action/eat.png", "Image2" : "Images/Action/eat.gif"},
    {"Image1" : "Images/Action/jump.png", "Image2" : "Images/Action/jump.gif"},
    {"Image1" : "Images/Action/drive.png", "Image2" : "Images/Action/drive.gif"},
  ];

  buildList() async{
    for(int i = 0; i < inputs.length; i++) {
      final element = inputs[i];

      namingList.add(
        Container(
          child: Card(
            elevation: 0.0,
            color: Color(0x00000000),

            child: FlipCard(
              direction: FlipDirection.HORIZONTAL,
              speed: 1000,

              front: Container(
                decoration: BoxDecoration(
                  color: Color(0xFF006666),
                  image: DecorationImage(
                    image: AssetImage(element["Image1"]),
                    fit: BoxFit.fill,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                ),

              ),

              back: Container(
                alignment: Alignment.topRight,
                padding: EdgeInsets.only(right: 15, top: 10),

                decoration: BoxDecoration(
                  color: Color(0xFF006666),
                  image: DecorationImage(
                    image: AssetImage(element["Image2"]),
                    fit: BoxFit.fill,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                ),
              ),
            ),
          ),
        ),
      );
    }
  }

  void initState(){
    buildList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Container(
        alignment: Alignment.center,
        height: MediaQuery.of(context).size.height,

        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("Images/seasons/action-full.png"),
            fit: BoxFit.fill,
          ),
        ),

        child: Container(
          alignment: Alignment.center,
          margin: EdgeInsets.all(24),
          height: 400,

          child: GridView.count(
            crossAxisSpacing: 20,
            mainAxisSpacing: 30,
            crossAxisCount: 2,
            primary: false,

            children: namingList,
          ),
        ),
      ),
    );
  }
}