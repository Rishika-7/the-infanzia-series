
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_tts/flutter_tts.dart';

class Tracing extends StatefulWidget {
  @override
  TracingState createState() => new TracingState();
}

class TracingState extends State<Tracing> {

  final FlutterTts flutterTts = FlutterTts();

  speakStraight() async{
    await flutterTts.setLanguage("en-IN");
    await flutterTts.setSpeechRate(1);
    await flutterTts.speak("Let us draw a straight line");
  }

  speakZigzag() async{
    await flutterTts.setLanguage("en-IN");
    await flutterTts.setSpeechRate(1);
    await flutterTts.speak("a zigzag straight");
  }

  speakWavy() async{
    await flutterTts.setLanguage("en-IN");
    await flutterTts.setSpeechRate(1);
    await flutterTts.speak("a wavy line");
  }

  speakDotted() async{
    await flutterTts.setLanguage("en-IN");
    await flutterTts.setSpeechRate(1);
    await flutterTts.speak("a dotted line");
  }

  speakCurvy() async{
    await flutterTts.setLanguage("en-IN");
    await flutterTts.setSpeechRate(1);
    await flutterTts.speak("and a curvy line");
  }

  List<Container> namingList = new List();

  var inputs = [
    {"Image1" : "Images/Levels/Tracing/straightline.png"},
    {"Image1" : "Images/Levels/Tracing/zigzagline.png"},
    {"Image1" : "Images/Levels/Tracing/wavyline.png"},
    {"Image1" : "Images/Levels/Tracing/dottedline.png"},
    {"Image1" : "Images/Levels/Tracing/curvyline.png"},
  ];

  buildList() async{
    for(int i = 0; i < inputs.length; i++) {
      final element = inputs[i];

      namingList.add(
        Container(
          child: Card(
            elevation: 0.0,
            color: Color(0x00000000),

            child: Container(
              alignment: Alignment.topRight,
              padding: EdgeInsets.only(right: 15, top: 10),

              decoration: BoxDecoration(
                color: Color(0xFF006666),
                image: DecorationImage(
                  image: AssetImage(element["Image1"]),
                  fit: BoxFit.fill,
                ),
                borderRadius: BorderRadius.all(Radius.circular(8.0)),
              ),

              child: Column(
                children: <Widget>[

                  SizedBox(
                    height: 40,
                    width: 40,

                    child: FloatingActionButton(
                      heroTag: i,
                      onPressed: () {

                        if (i == 0) {
                          speakStraight();
                        }
                        else if(i == 1) {
                          speakZigzag();
                        }
                        else if(i == 2) {
                          speakWavy();
                        }
                        else if(i == 3) {
                          speakDotted();
                        }
                        else {
                          speakCurvy();
                        }
                      },

                      backgroundColor: Colors.blueAccent,
                      child: Icon(
                        Icons.tag_faces,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
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
            image: AssetImage("Images/Levels/Tracing/tracing-full.png"),
            fit: BoxFit.fill,
          ),
        ),

        child: Container(
          alignment: Alignment.center,
          margin: EdgeInsets.all(24),
          height: 400,

          child: GridView.count(
            crossAxisSpacing: 20,
            mainAxisSpacing: 30,
            crossAxisCount: 2,
            primary: false,

            children: namingList,
          ),
        ),
      ),
    );

  }
}