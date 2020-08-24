import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_tts/flutter_tts.dart';

class Shapes extends StatefulWidget {
  @override
  HomePage createState() => HomePage();
}

class HomePage extends State<Shapes> {
  final ScrollController _scrollController = ScrollController();
  final FlutterTts flutterTts = FlutterTts();

  speak_circle() async {
    await flutterTts.speak("Circle, c-i-r-c-l-e circle");
  }

  speak_triangle() async {
    await flutterTts.speak("Triangle, t-r-i-a-n-g-l-e, triangle");
  }

  speak_square() async {
    await flutterTts.speak("Square, s-q-u-a-r-e, square");
  }

  speak_rectangle() async {
    await flutterTts.speak("Rectangle, r-e-c-t-a-n-g-l-e, rectangle");
  }

  List<Container> namingList = new List();

  var inputs = [
    {"Image1": "Images/circle.png", "Image2": "Images/circle_b.png"},
    {"Image1": "Images/triangle.png", "Image2": "Images/triangle_b.png"},
    {"Image1": "Images/square.png", "Image2": "Images/square_b.png"},
    {"Image1": "Images/rectangle.png", "Image2": "Images/rectangle_b.png"},
  ];

  buildList() async {
    for (int i = 0; i < inputs.length; i++) {
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
                            speak_circle();
                          } else if (i == 1) {
                            speak_triangle();
                          } else if (i == 2) {
                            speak_square();
                          } else {
                            speak_rectangle();
                          }
                        },
                        backgroundColor: Colors.white,
                        child: Icon(
                          Icons.tag_faces,
                          color: Colors.black,
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
            image: AssetImage("Images/ShapesBG.png"),
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
              crossAxisSpacing: 20,
              mainAxisSpacing: 30,
              crossAxisCount: 2,
              primary: false,
              children: namingList,
            ),
          ),
        ),
      ),
    );
  }
}
