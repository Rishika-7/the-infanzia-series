import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class LessThan extends StatefulWidget {
  @override
  _LessThanState createState() => _LessThanState();
}

class _LessThanState extends State<LessThan> {
  List<Container> oppList = new List();

  var inputs = [
    {"Image1" : "Images/Levels/LessThan/1b.png", "Image2" : "Images/Levels/LessThan/lessThan-symbol.png", "Image3" : "Images/Levels/LessThan/3b.png"},
    {"Image1" : "Images/Levels/LessThan/2b.png", "Image2" : "Images/Levels/LessThan/lessThan-symbol.png", "Image3" : "Images/Levels/LessThan/4b.png"},
    {"Image1" : "Images/Levels/LessThan/3p.png", "Image2" : "Images/Levels/LessThan/lessThan-symbol.png", "Image3" : "Images/Levels/LessThan/5p.png"},
    {"Image1" : "Images/Levels/LessThan/4f.png", "Image2" : "Images/Levels/LessThan/lessThan-symbol.png", "Image3" : "Images/Levels/LessThan/8f.png"},
    {"Image1" : "Images/Levels/LessThan/5pin.png", "Image2" : "Images/Levels/LessThan/lessThan-symbol.png", "Image3" : "Images/Levels/LessThan/6pin.png"},
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
            image: AssetImage("Images/Levels/LessThan/lessThan-full.png"),
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