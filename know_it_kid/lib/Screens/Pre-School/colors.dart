import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_tts/flutter_tts.dart';

class Colours extends StatefulWidget {
  @override
  _ColorsState createState() => _ColorsState();
}

class _ColorsState extends State<Colours> {
  final ScrollController _scrollController = ScrollController();
  final FlutterTts flutterTts = FlutterTts();

  speakColor(i) async {
    var parts = [
      'red',
      'blue',
      'green',
      'yellow',
      'black',
      'pink',
      'orange',
      'purple',
      'brown',
      'white'
    ];

    await flutterTts.speak(parts[i]);
  }

  List<Container> colorList = new List();

  var inputs = [
    "Images/red.png",
    "Images/Blue.png",
    "Images/green.png",
    "Images/yellow.png",
    "Images/black.png",
    "Images/pink.png",
    "Images/orange.png",
    "Images/purple.png",
    "Images/brown.png",
    "Images/white.png",
  ];

  buildList() async {
    for (int i = 0; i < inputs.length; i++) {
      final element = inputs[i];

      colorList.add(
        Container(
          child: Card(
            elevation: 5.0,
            color: Color(0x00000000),
            child: GestureDetector(
              onTap: () {
                speakColor(i);
              },
              child: Container(
                alignment: Alignment.topRight,
                padding: EdgeInsets.only(right: 20, top: 20),
                decoration: BoxDecoration(
                  color: Color(0xFF006666),
                  image: DecorationImage(
                    image: AssetImage(element),
                    fit: BoxFit.fill,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                ),
              ),
            ),
          ),
        ),
      );
    }
  }

  void initState() {
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
            image: AssetImage("Images/ColorsBG.png"),
            fit: BoxFit.fill,
          ),
        ),
        child: Container(
          alignment: Alignment.center,
          margin: EdgeInsets.all(24),
          height: 400,
          child: Scrollbar(
            isAlwaysShown: true,
            controller: _scrollController,
            child: GridView.count(
              controller: _scrollController,
              crossAxisSpacing: 30,
              mainAxisSpacing: 30,
              crossAxisCount: 1,
              primary: false,
              children: colorList,
            ),
          ),
        ),
      ),
    );
  }
}
