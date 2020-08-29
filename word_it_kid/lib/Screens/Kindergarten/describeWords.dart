import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_tts/flutter_tts.dart';

class DescribingWords extends StatefulWidget {
  @override
  HomePage createState() => HomePage();
}

class HomePage extends State<DescribingWords> {

  final FlutterTts flutterTts = FlutterTts();

  speak_big() async{
    await flutterTts.setLanguage("en-IN");
    await flutterTts.setSpeechRate(1);
    await flutterTts.speak("I live in a BIG house! Big is a Describing Word!");
  }

  speak_pink() async{
    await flutterTts.setLanguage("en-IN");
    await flutterTts.setSpeechRate(1);
    await flutterTts.speak("I love my bow! My bow is pink in colour! All colours are Describing Words.");
  }

  speak_sweet() async{
    await flutterTts.setLanguage("en-IN");
    await flutterTts.setSpeechRate(1);
    await flutterTts.speak("I have a sweet voice and I love to sing! Sweet is a Describing Word.");
  }

  speak_tasty() async{
    await flutterTts.setLanguage("en-IN");
    await flutterTts.setSpeechRate(1);
    await flutterTts.speak("My banana is very tasty! Tasty is a Describing Word!");
  }

  List<Container> namingList = new List();

  var inputs = [
    {"Image1" : "Images/DescribingWords/big.png"},
    {"Image1" : "Images/DescribingWords/pink.png"},
    {"Image1" : "Images/DescribingWords/sweet.png"},
    {"Image1" : "Images/DescribingWords/tasty.png"},

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
                          speak_big();
                        }
                        else if(i == 1) {
                          speak_pink();
                        }
                        else if(i == 2) {
                          speak_sweet();
                        }
                        else {
                          speak_tasty();
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
            image: AssetImage("Images/seasons/describe-full.png"),
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