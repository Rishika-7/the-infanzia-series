import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class SingPlu extends StatefulWidget {
  @override
  _SingPluState createState() => _SingPluState();
}

class _SingPluState extends State<SingPlu> {
  List<Container> oppList = new List();

  var inputs = [
    {"Image1" : "Images/sp/ant.png", "Image2" : "Images/sp/ants.png"},
    {"Image1" : "Images/sp/apple.png", "Image2" : "Images/sp/apples.png"},
    {"Image1" : "Images/sp/box.png", "Image2" : "Images/sp/boxes.png"},
    {"Image1" : "Images/sp/cat.png", "Image2" : "Images/sp/cats.png"},
    {"Image1" : "Images/sp/hat.png", "Image2" : "Images/sp/hats.png"},
  ];

  buildList() async{
    for(int i = 0; i < inputs.length; i++){
      final element = inputs[i];

      oppList.add(

        Container(
          width: 160,

          height: 140,

          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,

            children: <Widget>[

              Container(
                width: 100,
                height: 100,
                padding: EdgeInsets.all(10),

                decoration: BoxDecoration(
                  color: Colors.white,
                  image: DecorationImage(
                    image: AssetImage(element["Image1"]),
                    fit: BoxFit.fill,
                  ),
                ),
              ),

              Container(
                width: 100,
                height: 100,
                padding: EdgeInsets.all(10),

                decoration: BoxDecoration(
                  color: Colors.white,
                  image: DecorationImage(
                    image: AssetImage(element["Image2"]),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ],
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
            image: AssetImage("Images/seasons/sing-full.png"),
            fit: BoxFit.fill,
          ),
        ),

        child: Container(
          alignment: Alignment.center,
          margin: EdgeInsets.only(left: 20, right: 20, bottom: 200, top: 180),
          width: MediaQuery.of(context).size.width,

          child: ListView(
            scrollDirection: Axis.vertical,
            padding: EdgeInsets.only(top: 0),
            children: oppList,
          ),
        ),
      ),
    );
  }
}