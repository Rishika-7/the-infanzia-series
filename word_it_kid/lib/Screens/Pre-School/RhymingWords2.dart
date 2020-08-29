import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_tts/flutter_tts.dart';
import  'package:flip_card/flip_card.dart';

class secondPage extends StatefulWidget {
  @override
  Color colour;
  String content;
  String audiofile;
  String image1;
  String image2;
  String image3;
  String image4;
  String text1;
  String text2;
  String text3;
  String text4;
  secondPage({ this.colour, this.audiofile, this.image1, this.image2, this.image3, this.image4,
    this.text1, this.text2, this.text3, this.text4, this.content});
  _secondPageState createState() => _secondPageState(
    colour: colour,
    audiofile : audiofile,
    image1: image1,
    image2: image2,
    image3: image3,
    image4: image4,
    text1: text1,
    text2: text2,
    text3: text3,
    text4: text4,
    content: content,

  );
}

class _secondPageState extends State<secondPage> {
  final FlutterTts _flutterTts = FlutterTts();
  @override
  Color colour;
  String content;
  String audiofile;
  String image1;
  String image2;
  String image3;
  String image4;
  String text1;
  String text2;
  String text3;
  String text4;
  _secondPageState({ this.colour, this.audiofile, this.image1, this.image2, this.image3,
    this.image4, this.text1, this.text2, this.text3, this.text4, this.content});
  Widget build(BuildContext context) {
    speak(String spk)async{
      await _flutterTts.speak(spk);
    }
    return Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                "Images/seasons/autumn-bg.png",
              ),
              fit: BoxFit.fill,
            )
          ),

          child: ListView(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(left: 20),
                    child: Text(content,
                      style: TextStyle(
                        fontSize: 200,
                        fontWeight: FontWeight.bold,
                        color: Colors.amber,
                      ),),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10, right: 10),
                    child: IconButton(
                        icon: Icon(Icons.volume_up, size: 50, color: Colors.deepOrange,),
                        onPressed:  () => speak(audiofile)
                    ),
                  ),
                  Container(
                    child: Image.asset("Images/Redirection/bird.png",
                      height: 100,
                      width: 92,
                      alignment: Alignment.topRight,),

                  )
                ],
              ),

              Row(

                children: <Widget>[
                  FlipCard(
                      front: Container(
                        margin: EdgeInsets.all(40),
                        padding: EdgeInsets.fromLTRB(10, 35, 10, 20),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.amber,
                        ),
                        height: 150,
                        width: 120,
                        child: Text(text1,
                          style: TextStyle(
                            fontSize: 50,
                            color: Colors.green[900],
                            fontWeight: FontWeight.bold,

                          ),
                          textAlign: TextAlign.center,),
                      ),
                      back: Container(
                        margin: EdgeInsets.all(40),
                        height: 150,
                        width: 120,
                        color: Colors.white,
                        child: Image.asset(image1),
                      )
                  ),
                  FlipCard(
                      front: Container(
                        margin: EdgeInsets.fromLTRB(0,40,0,40),
                        padding: EdgeInsets.fromLTRB(10, 35, 10, 20),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.pink,
                        ),
                        height: 150,
                        width: 125,
                        child: Text(text2,
                          style: TextStyle(
                            fontSize: 50,
                            color: Colors.green[900],
                            fontWeight: FontWeight.bold,

                          ),),
                      ),
                      back: Container(
                        margin: EdgeInsets.fromLTRB(0,40,0,40),
                        color: Colors.white,
                        height: 150,
                        width: 125,
                        child: Image.asset(image2),
                      )
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  FlipCard(
                      front: Container(
                        margin: EdgeInsets.fromLTRB(40, 0, 40, 40),
                        height: 150,
                        width: 120,
                        padding: EdgeInsets.fromLTRB(10, 35, 10, 20),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.blue,
                        ),
                        child: Text(text3,
                          style: TextStyle(
                            fontSize: 50,
                            color: Colors.green[900],
                            fontWeight: FontWeight.bold,
                          ),),
                      ),
                      back: Container(
                        margin: EdgeInsets.fromLTRB(40, 0, 40, 40),
                        color: Colors.white,
                        height: 150,
                        width: 120,
                        child: Image.asset(image3),
                      )
                  ),
                  FlipCard(
                      front: Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 0, 40),
                        padding: EdgeInsets.fromLTRB(10, 35, 10, 20),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.lightGreenAccent,
                        ),
                        height: 150,
                        width: 120,
                        child: Text(text4,
                          style: TextStyle(
                            fontSize: 50,
                            color: Colors.green[900],
                            fontWeight: FontWeight.bold,
                          ),),
                      ),
                      back: Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 0, 40),
                        color: Colors.white,
                        height: 150,
                        width: 120,
                        child: Image.asset(image4),
                      )
                  ),
                ],
              ),

            ],
          ),
        )
    );
  }
}