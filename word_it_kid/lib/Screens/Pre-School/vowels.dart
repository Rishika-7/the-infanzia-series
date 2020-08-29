
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_tts/flutter_tts.dart';

class Vowels extends StatefulWidget {
  @override
  VowelsState createState() => new VowelsState();
}

class VowelsState extends State<Vowels> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,

      body: Container(
        alignment: Alignment.center,
        height: MediaQuery.of(context).size.height,

        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("Images/seasons/winter-bg.png"),
            fit: BoxFit.fill,
          ),
        ),

        child: Grid(),
      ),
    );
  }
}

class Grid extends StatefulWidget {
  @override
  GridApp createState() => new GridApp();
}

class GridApp extends State<Grid> {

  final FlutterTts flutterTts = FlutterTts();

  @override
  Widget build(BuildContext context) {

    speak() async{
      await flutterTts.setLanguage("en-IN");
      await flutterTts.setSpeechRate(1);
      await flutterTts.speak("A. E. I. O. U. are vowels");
    }

    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.all(24),
      padding: EdgeInsets.all(8),
      width: MediaQuery.of(context).size.width,

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[

          Container(
            height: 110,
            child: Image(
              image: AssetImage("Images/vowels/vowels-heading.png"),
              fit: BoxFit.cover,
            ),
          ),

          FloatingActionButton(
            heroTag: "btn1",
            onPressed: () {
              speak();
            },

            backgroundColor: Colors.blueAccent,
            child: Center(
              child: Text(
                'GO',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
            ),
          ),

          SizedBox(
            height: 15,
          ),


          Image.asset(
            "Images/vowels/vowels-box.png",
            fit: BoxFit.contain,
            height: 250,
            width: 250,
          ),

        ],
      ),


    );
  }
}
