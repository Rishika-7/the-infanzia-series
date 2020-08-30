
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_tts/flutter_tts.dart';

class Intro extends StatefulWidget {
  final String name;
  final String age;
  Intro({Key key, @required this.name, this.age}) : super(key: key);

  @override
  IntroState createState() => new IntroState(
    name : name,
    age: age,
  );
}

class IntroState extends State<Intro> {

  String name;
  String age;
  IntroState({this.name, this.age});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,

      body: Container(
        alignment: Alignment.center,
        height: MediaQuery.of(context).size.height,

        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("Images/intro-full.png"),
            fit: BoxFit.fill,
          ),
        ),

        child: Grid(
          name : name,
          age: age,
        ),
      ),
    );
  }
}

class Grid extends StatefulWidget {
  final String name;
  final String age;
  Grid({Key key, @required this.name, this.age}) : super(key: key);

  @override
  GridApp createState() => new GridApp(
    name : name,
    age: age,
  );
}

class GridApp extends State<Grid> {

  String name;
  String age;
  GridApp({this.name, this.age});

  final FlutterTts flutterTts = FlutterTts();

  @override
  Widget build(BuildContext context) {

    speak() async{
      await flutterTts.setLanguage("en-IN");
      await flutterTts.setSpeechRate(1);
      await flutterTts.speak("Hello $name! Let's learn how to introduce ourselves! Repeat after me! My name is $name and I am $age years old");
    }

    return Container(
      alignment: Alignment.centerLeft,
      margin: EdgeInsets.only(left: 60),
      padding: EdgeInsets.all(8),
      width: MediaQuery.of(context).size.width,

      child: SizedBox(
        height: 100,
        width: 100,
        child: FloatingActionButton(
          heroTag: "btn1",
          onPressed: (){
            speak();
          },
          backgroundColor: Colors.lightBlue[900],
          child: Center(
              child: Icon(Icons.tag_faces, size: 80,)
          ),
        ),
      ),
    );
  }
}
