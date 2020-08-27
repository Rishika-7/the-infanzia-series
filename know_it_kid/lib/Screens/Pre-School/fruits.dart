import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_tts/flutter_tts.dart';

class Fruits extends StatefulWidget {
  @override
  HomePage createState() => HomePage();
}

class HomePage extends State<Fruits> {
  final ScrollController _scrollController = ScrollController();
  final FlutterTts flutterTts = FlutterTts();

  speakApple() async {
    await flutterTts.speak("Apple");
  }

  speakBanana() async {
    await flutterTts.speak("Banana");
  }

  speakWatermelon() async {
    await flutterTts.speak("Watermelon");
  }

  speakOrange() async {
    await flutterTts.speak("Orange");
  }

  speakGrapes() async {
    await flutterTts.speak("Grapes");
  }

  speakPineapple() async {
    await flutterTts.speak("Pineapple");
  }

  speakStrawberry() async {
    await flutterTts.speak("Strawberry");
  }

  List<Container> namingList = new List();

  var inputs = [
    {"Image1": "Images/Apple.png"},
    {"Image1": "Images/Banana.png"},
    {"Image1": "Images/Watermelon.png"},
    {"Image1": "Images/Oranges.png"},
    {"Image1": "Images/Grapes.png"},
    {"Image1": "Images/Pineapple.png"},
    {"Image1": "Images/Strawberrry.png"},
  ];

  buildList() async {
    for (int i = 0; i < inputs.length; i++) {
      final element = inputs[i];

      namingList.add(
        Container(
          child: Card(
            elevation: 5.0,
            color: Color(0x00000000),
            child: GestureDetector(
              onTap: () {
                if (i == 0) {
                  speakApple();
                } else if (i == 1) {
                  speakBanana();
                } else if (i == 2) {
                  speakWatermelon();
                } else if (i == 3) {
                  speakOrange();
                } else if (i == 4) {
                  speakGrapes();
                } else if (i == 5) {
                  speakPineapple();
                } else {
                  speakStrawberry();
                }
              },
              child: Container(
                alignment: Alignment.topRight,
                padding: EdgeInsets.only(right: 20, top: 20),
                decoration: BoxDecoration(
                  color: Color(0xFF006666),
                  image: DecorationImage(
                    image: AssetImage(element["Image1"]),
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
            image: AssetImage("Images/FruitsBG.png"),
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
              children: namingList,
            ),
          ),
        ),
      ),
    );
  }
}
