import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'RhymingWords2.dart';

class rhymingPage extends StatefulWidget {
  @override
  _rhymingPageState createState() => _rhymingPageState();
}

class _rhymingPageState extends State<rhymingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,

        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                "Images/background.png",
              ),
              fit: BoxFit.fill,
            )
        ),

        child:  Column(
          children: <Widget>[
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
                  child: Text(
                    "Let's Rhyme",
                    textAlign: TextAlign.center,
                    style:  TextStyle(
                      fontSize:  60,
                      fontWeight: FontWeight.bold,
                      color: Colors.yellowAccent,
                    ),
                  ),
                )
              ],
            ),

            Row(children: <Widget>[
              Container(
                height:  50,
              ),
            ],),
            Row(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(left: 10),
                  color: Colors.yellowAccent,
                  width: 100,
                  height: 100,
                  child: RaisedButton(
                      elevation: 20,
                      color: Colors.pink,
                      onPressed: (){
                        Navigator.of(context).push(new MaterialPageRoute(
                          builder: (BuildContext context) => new secondPage(
                            colour: Colors.pink,
                            content: "at",
                            image1: "Images/bat.png",
                            text1: "Bat",
                            image2: "Images/cat.png",
                            text2: "Cat",
                            image3: "Images/mat.png",
                            text3: "Mat",
                            image4: "Images/rat.png",
                            text4: "Rat",

                            audiofile: "Hello. We will learn about"
                                "rhyming words that end with at. Like a bat.   a cat. a mat. "
                                "and a rat. All these words have A T at the end.",
                          ),));

                      },
                      child: Container(
                        height: 70,
                        width: 98,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white, width: 3, style: BorderStyle.solid)
                        ),
                        child: Text(
                          "-at",
                          style: TextStyle(
                            fontSize: 48,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )
                  ),

                ),
                Container(
                  width: 140,
                  height: 100,

                ),
                Container(
                  color: Colors.yellowAccent,
                  width: 100,
                  height: 100,
                  child: RaisedButton(
                      elevation: 20,
                      color: Colors.deepPurple,
                      onPressed: (){
                        Navigator.of(context).push(new MaterialPageRoute(
                          builder: (BuildContext context) => new secondPage(
                            colour: Colors.deepPurple,
                            content: "ll",
                            image1: "Images/ball.png",
                            text1: "Ball",
                            image2: "Images/wall.png",
                            text2: "Wall",
                            image3: "Images/RhymingWords/call.png",
                            text3: "Call",
                            image4: "Images/RhymingWords/tall.png",
                            text4: "Tall",
                            audiofile: "Hello. We will learn about"
                                "rhyming words that end with . L L. Like a Ball.   a Wall. a Call. "
                                "and a Tall. All these words have L L at the end.",

                          ),));
                      },
                      child: Container(
                        height: 70,
                        width: 98,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white, width: 3, style: BorderStyle.solid)
                        ),
                        child: Text(
                          "-ll",
                          style: TextStyle(
                            fontSize: 48,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )
                  ),
                ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  width: 130,
                  height: 100,

                ),
                Container(
                  color: Colors.amber,
                  width: 100,
                  height: 100,
                  alignment: Alignment.centerLeft,
                  child: RaisedButton(
                      color: Colors.amber,
                      onPressed: (){
                        Navigator.of(context).push(new MaterialPageRoute(
                          builder: (BuildContext context) => new secondPage(
                            colour: Colors.amber,
                            content: "ar",
                            image1: "Images/car.png",
                            text1: "Car",
                            image2: "Images/RhymingWords/jar.png",
                            text2: "Jar",
                            image3: "Images/RhymingWords/war.png",
                            text3: "War",
                            image4: "Images/RhymingWords/bar.png",
                            text4: "Bar",
                            audiofile: "Hello! We will learn about"
                                "rhyming words that end with . A R. Like a Car.   a Jar. a War. "
                                "and a Bar. All these words have A R at the end.",

                          ),));
                      },
                      child: Container(
                        height: 70,
                        width: 98,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white, width: 2, style: BorderStyle.solid)
                        ),
                        child: Text(
                          "-ar",
                          style: TextStyle(
                            fontSize: 48,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )
                  ),

                ),
              ],),
            Row(
              children: <Widget>[
                Container(
                  color: Colors.yellowAccent,
                  width: 100,
                  height: 100,
                  margin: EdgeInsets.only(left: 10),
                  child: RaisedButton(
                      elevation: 20,
                      color: Colors.blueAccent,
                      onPressed: (){
                        Navigator.of(context).push(new MaterialPageRoute(
                          builder: (BuildContext context) => new secondPage(
                            colour: Colors.blueAccent,
                            content: "ot",
                            image1: "Images/RhymingWords/pot.png",
                            text1: "Pot",
                            image2: "Images/RhymingWords/dot.png",
                            text2: "Dot",
                            image3: "Images/RhymingWords/hot.png",
                            text3: "Hot",
                            image4: "Images/RhymingWords/cot.png",
                            text4: "Cot",
                            audiofile: "Hello! We will learn about"
                                "rhyming words that end with . O T. Like a Pot.   a Dot.  Hot. "
                                "and a cot. All these words have O T at the end.",

                          ),),
                        );
                      },
                      child: Container(
                        height: 70,
                        width: 98,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white, width: 2, style: BorderStyle.solid)
                        ),
                        child: Text(
                          "-ot",
                          style: TextStyle(
                            fontSize: 43,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )
                  ),
                ),
                Container(
                  width: 140,
                  height: 100,
                ),
                Container(color: Colors.yellowAccent,
                  width: 100,
                  height: 100,
                  child: RaisedButton(
                      elevation: 20,
                      color: Colors.deepOrange,
                      onPressed: (){
                        Navigator.of(context).push(new MaterialPageRoute(
                          builder: (BuildContext context) => new secondPage(
                            colour: Colors.deepOrange,
                            content: "an",
                            image1: "Images/Van.png",
                            text1: "Van",
                            image2: "Images/king.png",
                            text2: "Man",
                            image3: "Images/RhymingWords/can.png",
                            text3: "Can",
                            image4: "Images/RhymingWords/pan.png",
                            text4: "Pan",
                            audiofile: "Hello! We will learn about"
                                "rhyming words that end with . A N. Like a Van.   a Man. a Can. "
                                "and a Pan. All these words have A N at the end.",
                          ),));
                      },
                      child: Container(
                        height: 70,
                        width: 100,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white, width: 2, style: BorderStyle.solid)
                        ),
                        child: Text(
                          "-an",
                          style: TextStyle(
                            fontSize: 43,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )
                  ),),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  child: Image.asset("Images/zebra.png",
                    height: 220,
                    width: 150,
                    alignment: Alignment.bottomLeft,),
                )
              ],
            )],
        ),
      ),
    );
  }
}





