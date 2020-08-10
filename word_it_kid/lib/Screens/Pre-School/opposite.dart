import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Opposite extends StatefulWidget {
  @override
  _OppositeState createState() => _OppositeState();
}

class _OppositeState extends State<Opposite> {
  List<Container> oppList = new List();

  var inputs = [
    {"Image1" : "Images/Opposite/full.png", "Image2" : "Images/Opposite/empty.png"},
    {"Image1" : "Images/Opposite/old.png", "Image2" : "Images/Opposite/young.png"},
    {"Image1" : "Images/Opposite/fast.png", "Image2" : "Images/Opposite/slow.png"},
    {"Image1" : "Images/Opposite/light.png", "Image2" : "Images/Opposite/dark.png"},
    {"Image1" : "Images/Opposite/happy.png", "Image2" : "Images/Opposite/sad.png"},
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
            image: AssetImage("Images/seasons/opp-bg.png"),
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