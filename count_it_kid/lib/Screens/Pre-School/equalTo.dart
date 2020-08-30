import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class EqualTo extends StatefulWidget {
  @override
  _EqualToState createState() => _EqualToState();
}

class _EqualToState extends State<EqualTo> {
  List<Container> oppList = new List();

  var inputs = [
    {"Image1" : "Images/Levels/Equals/1.png", "Image2" : "Images/Levels/Equals/equalsSymbol.png", "Image3" : "Images/Levels/Equals/1i.png"},
    {"Image1" : "Images/Levels/Equals/3.png", "Image2" : "Images/Levels/Equals/equalsSymbol.png", "Image3" : "Images/Levels/Equals/3b.png"},
    {"Image1" : "Images/Levels/Equals/5p.png", "Image2" : "Images/Levels/Equals/equalsSymbol.png", "Image3" : "Images/Levels/Equals/5pin.png"},
    {"Image1" : "Images/Levels/Equals/2.png", "Image2" : "Images/Levels/Equals/equalsSymbol.png", "Image3" : "Images/Levels/Equals/2b.png"},
    {"Image1" : "Images/Levels/Equals/8.png", "Image2" : "Images/Levels/Equals/equalsSymbol.png", "Image3" : "Images/Levels/Equals/8f.png"},
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
            image: AssetImage("Images/Levels/Equals/equals-full.png"),
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