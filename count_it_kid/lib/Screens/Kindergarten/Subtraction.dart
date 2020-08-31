import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_tts/flutter_tts.dart';

class Subtraction extends StatefulWidget {
  @override
  HomePage createState() => HomePage();
}

class HomePage extends State<Subtraction> {

  List<Container> namingList = new List();

  var inputs = [
    {"Image1" : "Images/Levels/Subtract/73.png", "Image2" : "Images/Levels/Subtract/4.png"},
    {"Image1" : "Images/Levels/Subtract/32.png", "Image2" : "Images/Levels/Subtract/1.png"},
    {"Image1" : "Images/Levels/Subtract/86.png", "Image2" : "Images/Levels/Subtract/2.png"},
    {"Image1" : "Images/Levels/Subtract/91.png", "Image2" : "Images/Levels/Subtract/8.png"},
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
                  image: DecorationImage(
                    image: AssetImage(element["Image1"]),
                    fit: BoxFit.contain,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                ),

              ),

              back: Container(
                alignment: Alignment.topRight,

                decoration: BoxDecoration(
                  color: Colors.lightBlue,
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
            image: AssetImage("Images/Levels/Add/addition-full.png"),
            fit: BoxFit.fill,
          ),
        ),

        child: Container(

          margin: EdgeInsets.only(left: 24, right: 24, top: 140),
          padding: EdgeInsets.only(top: 0),

          child: GridView.count(
            primary: false,
            crossAxisCount: 1,
            children: namingList,
          ),
        ),
      ),
    );



  }
}
