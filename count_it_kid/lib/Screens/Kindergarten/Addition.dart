import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_tts/flutter_tts.dart';

class Addition extends StatefulWidget {
  @override
  HomePage createState() => HomePage();
}

class HomePage extends State<Addition> {

  List<Container> namingList = new List();

  var inputs = [
    {"Image1" : "Images/Levels/Add/12.png", "Image2" : "Images/Levels/Add/3.png"},
    {"Image1" : "Images/Levels/Add/43.png", "Image2" : "Images/Levels/Add/7.png"},
    {"Image1" : "Images/Levels/Add/26.png", "Image2" : "Images/Levels/Add/8.png"},
    {"Image1" : "Images/Levels/Add/81.png", "Image2" : "Images/Levels/Add/9.png"},
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
