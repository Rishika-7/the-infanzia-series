import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NumberNames extends StatefulWidget {
  @override
  NumberNamesState createState() => new NumberNamesState();
}

class NumberNamesState extends State<NumberNames> {

  List<Container> numList = new List();

  var inputs = [
    {"Image1" : "Images/Levels/NumberNames/one.png", "Image2" : "Images/Levels/NumberNames/two.png"},
    {"Image1" : "Images/Levels/NumberNames/three.png", "Image2" : "Images/Levels/NumberNames/four.png"},
    {"Image1" : "Images/Levels/NumberNames/five.png", "Image2" : "Images/Levels/NumberNames/six.png"},
    {"Image1" : "Images/Levels/NumberNames/seven.png", "Image2" : "Images/Levels/NumberNames/eight.png"},
    {"Image1" : "Images/Levels/NumberNames/nine.png", "Image2" : "Images/Levels/NumberNames/ten.png"},
  ];

  buildList() async{
    for(int i = 0; i < inputs.length; i++){
      final element = inputs[i];

      numList.add(

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
            image: AssetImage("Images/Levels/NumberNames/NumNames.png"),
            fit: BoxFit.fill,
          ),
        ),

        child: Container(
          alignment: Alignment.center,
          margin: EdgeInsets.only(left: 20, right: 20, bottom: 200, top: 190),
          width: MediaQuery.of(context).size.width,

          child: ListView(
            scrollDirection: Axis.vertical,
            padding: EdgeInsets.only(top: 0),
            children: numList,
          ),
        ),
      ),
    );
  }
}