import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:flutter/rendering.dart';
import 'package:flutter_tts/flutter_tts.dart';

class Colours extends StatefulWidget {
  @override
  _ColorsState createState() => _ColorsState();
}

class _ColorsState extends State<Colours> {
  final FlutterTts flutterTts = FlutterTts();
  List<bool> selectedColor = [true, true, true, true, true, true, true, true];

  List<String> colors = [
    'RED',
    'BLUE',
    'GREEN',
    'YELLOW',
    'BLACK',
    'PINK',
    'ORANGE',
    'BROWN'
  ];

  List<int> colorcode = [
    0xFFD32F2F,
    0xFF42A5F5,
    0xFF388E3C,
    0xFFFDD835,
    0xFF000000,
    0xFFF06292,
    0xFFFB8C00,
    0xFF5D4037
  ];

  speakColor(index) async {
    await flutterTts.setLanguage("en-IN");
    await flutterTts.setSpeechRate(1);
    await flutterTts.speak('${colors[index]}');
  }

  @override
  Widget build(BuildContext context) {
    _showColorWidget(index) {
      return GestureDetector(
        onTap: () {
          setState(() => selectedColor[index] = !selectedColor[index]);
          speakColor(index);
        },
        child: AnimatedContainer(
          height: 100,
          width: 100,
          duration: Duration(milliseconds: 500),
          decoration: BoxDecoration(
            shape: selectedColor[index] ? BoxShape.circle : BoxShape.rectangle,
            color:
                selectedColor[index] ? Color(colorcode[index]) : Colors.white,
          ),
          child: selectedColor[index]
              ? Center(
                  child: Icon(
                    Icons.sentiment_very_satisfied,
                    color: Colors.white,
                  ),
                )
              : Center(
                  child: Text(
                  "${colors[index]}",
                  style: TextStyle(
                      color: Color(colorcode[index]),
                      fontSize: 28,
                      fontWeight: FontWeight.bold),
                )),
        ),
      );
    }

    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("Images/ColorsBG.png"),
            fit: BoxFit.fill,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 70.0, bottom: 60.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    _showColorWidget(0),
                    SizedBox(height: 20, width: 20),
                    _showColorWidget(1),
                  ],
                ),
                SizedBox(height: 20, width: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    _showColorWidget(2),
                    SizedBox(height: 20, width: 20),
                    _showColorWidget(4),
                    SizedBox(height: 20, width: 20),
                    _showColorWidget(3),
                  ],
                ),
                SizedBox(height: 20, width: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    _showColorWidget(5),
                    SizedBox(height: 20, width: 20),
                    _showColorWidget(6),
                  ],
                ),
              ]),
        ),
      ),
    );
  }
}
