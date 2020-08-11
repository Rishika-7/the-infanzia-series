import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Similar extends StatefulWidget {
  @override
  _SimilarState createState() => _SimilarState();
}

class _SimilarState extends State<Similar> {
  List<Container> oppList = new List();

  var inputs = [
    {"Image1" : "Images/similar/big.png", "Image2" : "Images/similar/large.png"},
    {"Image1" : "Images/similar/fast.png", "Image2" : "Images/similar/speedy.png"},
    {"Image1" : "Images/similar/grin.png", "Image2" : "Images/similar/smile.png"},
    {"Image1" : "Images/similar/sad.png", "Image2" : "Images/similar/unhappy.png"},
    {"Image1" : "Images/similar/small.png", "Image2" : "Images/similar/tiny.png"},
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
            image: AssetImage("Images/seasons/pink-bg.png"),
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