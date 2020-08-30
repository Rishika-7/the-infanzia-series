import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class GreaterThan extends StatefulWidget {
  @override
  _GreaterThanState createState() => _GreaterThanState();
}

class _GreaterThanState extends State<GreaterThan> {
  List<Container> oppList = new List();

  var inputs = [
    {"Image1" : "Images/Levels/GreaterThan/6b.png", "Image2" : "Images/Levels/GreaterThan/greaterThan-Symbol.png", "Image3" : "Images/Levels/GreaterThan/5b.png"},
    {"Image1" : "Images/Levels/GreaterThan/3b.png", "Image2" : "Images/Levels/GreaterThan/greaterThan-Symbol.png", "Image3" : "Images/Levels/GreaterThan/1b.png"},
    {"Image1" : "Images/Levels/GreaterThan/7p.png", "Image2" : "Images/Levels/GreaterThan/greaterThan-Symbol.png", "Image3" : "Images/Levels/GreaterThan/5p.png"},
    {"Image1" : "Images/Levels/GreaterThan/8f.png", "Image2" : "Images/Levels/GreaterThan/greaterThan-Symbol.png", "Image3" : "Images/Levels/GreaterThan/6f.png"},
    {"Image1" : "Images/Levels/GreaterThan/4b.png", "Image2" : "Images/Levels/GreaterThan/greaterThan-Symbol.png", "Image3" : "Images/Levels/GreaterThan/2b.png"},
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
                width: 60,
                height: 60,
                padding: EdgeInsets.all(10),

                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(element["Image2"]),
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
                    image: AssetImage(element["Image3"]),
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
            image: AssetImage("Images/Levels/GreaterThan/greaterThan-full.png"),
            fit: BoxFit.fill,
          ),
        ),

        child: Container(
          alignment: Alignment.center,
          margin: EdgeInsets.only(left: 20, right: 20, top: 180),
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