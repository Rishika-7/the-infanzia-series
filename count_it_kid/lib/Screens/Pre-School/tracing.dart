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

  speakLine(i) async {
    var lines = [
      "Let us draw a straight line",
      "a zigzag line",
      "a wavy line",
      "a dotted line",
      "and a curvy line"
    ];

    await flutterTts.setLanguage("en-IN");
    await flutterTts.setSpeechRate(1);
    await flutterTts.speak(lines[i]);
  }

  PageController pageController;

  //image list
  List<String> images = [
    "Images/Levels/Tracing/straightline.png",
    "Images/Levels/Tracing/zigzagline.png",
    "Images/Levels/Tracing/wavyline.png",
    "Images/Levels/Tracing/dottedline.png",
    "Images/Levels/Tracing/curvyline.png",
  ];

  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: 1, viewportFraction: 0.5);
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
        child: PageView.builder(
            controller: pageController,
            itemCount: images.length,
            itemBuilder: (context, position) {
              return cardSlider(position);
            }),
      ),
    );
  }

  cardSlider(int index) {
    return AnimatedBuilder(
      animation: pageController,
      builder: (context, widget) {
        double value = 1;
        if (pageController.position.haveDimensions) {
          value = pageController.page - index;
          value = (1 - (value.abs() - 0.3)).clamp(0.0, 1.0);
        }

        return Center(
            child: SizedBox(
          height: Curves.easeInOut.transform(value) * 250,
          width: Curves.easeInOut.transform(value) * 400,
          child: widget,
        ));
      },
      child: GestureDetector(
        onTap: () {
          speakLine(index);
        },
        child: Container(
          child: SizedBox(
            height: 50,
            width: 50,
            child: Container(child: Icon(Icons.volume_up)),
          ),
          alignment: Alignment.topRight,
          //padding: EdgeInsets.only(right: 20, top: 20),
          decoration: BoxDecoration(
            color: Color(0xFF006666),
            image: DecorationImage(
              image: AssetImage(images[index]),
              fit: BoxFit.fill,
            ),
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
          ),
        ),
      ),
    );
  }
}
