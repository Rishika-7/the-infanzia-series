import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_tts/flutter_tts.dart';

class NamingWords extends StatefulWidget {
  @override
  HomePage createState() => HomePage();
}

class HomePage extends State<NamingWords> {

  final FlutterTts flutterTts = FlutterTts();

  speak_name() async{
    await flutterTts.setLanguage("en-IN");
    await flutterTts.setSpeechRate(1);
    await flutterTts.speak("Hello! My name is Donut, and I am a Dog! All names are Naming Words.");
  }

  speak_place() async{
    await flutterTts.setLanguage("en-IN");
    await flutterTts.setSpeechRate(1);
    await flutterTts.speak("I live in my house! My house is beautiful! All places are Naming Words.");
  }

  speak_thing() async{
    await flutterTts.setLanguage("en-IN");
    await flutterTts.setSpeechRate(1);
    await flutterTts.speak("This is my bone! My bone is my favourite thing! All things are Naming Words.");
  }

  speak_boy() async{
    await flutterTts.setLanguage("en-IN");
    await flutterTts.setSpeechRate(1);
    await flutterTts.speak("This is Sonal! She is my best friend! Sonal is a girl! Girl is a Naming Word.");
  }

  List<Container> namingList = new List();

  var inputs = [
    {"Image1" : "Images/NamingWords/name_f.png", "Image2" : "Images/NamingWords/name_b.png"},
    {"Image1" : "Images/NamingWords/place_f.png", "Image2" : "Images/NamingWords/place_b.png"},
    {"Image1" : "Images/NamingWords/thing_f.png", "Image2" : "Images/NamingWords/thing_b.png"},
    {"Image1" : "Images/NamingWords/girl_f.png", "Image2" : "Images/NamingWords/girl_b.png"},

  ];

  buildList() async{
    for(int i = 0; i < inputs.length; i++) {
      final element = inputs[i];

      namingList.add(
        Container(
          child: Card(
            elevation: 0.0,
            color: Color(0x00000000),

            child: FlipCard(
              direction: FlipDirection.HORIZONTAL,
              speed: 1000,

              front: Container(
                decoration: BoxDecoration(
                  color: Color(0xFF006666),
                  image: DecorationImage(
                    image: AssetImage(element["Image1"]),
                    fit: BoxFit.fill,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                ),

              ),

              back: Container(
                alignment: Alignment.topRight,
                padding: EdgeInsets.only(right: 15, top: 10),

                decoration: BoxDecoration(
                  color: Color(0xFF006666),
                  image: DecorationImage(
                    image: AssetImage(element["Image2"]),
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
                            speak_name();
                          }
                          else if(i == 1) {
                            speak_place();
                          }
                          else if(i == 2) {
                            speak_thing();
                          }
                          else {
                            speak_boy();
                          }
                        },
                        backgroundColor: Colors.brown,
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
            image: AssetImage("Images/seasons/naming-full.png"),
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