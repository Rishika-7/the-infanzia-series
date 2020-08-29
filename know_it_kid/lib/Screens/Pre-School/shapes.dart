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
  PageController pageController;
  final FlutterTts flutterTts = FlutterTts();

  speakShape(index) async {
    var shapes = [
      "Circle",
      'Triangle',
      'Square',
      'Rectangle',
    ];

    await flutterTts.speak(shapes[index]);
  }

  //image list
  var images = [
    {"Image1": "Images/circle.png", "Image2": "Images/circle_b.png"},
    {"Image1": "Images/triangle.png", "Image2": "Images/triangle_b.png"},
    {"Image1": "Images/square.png", "Image2": "Images/square_b.png"},
    {"Image1": "Images/rectangle.png", "Image2": "Images/rectangle_b.png"},
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
            image: AssetImage("Images/ShapesBG.png"),
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
      child: Container(
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
                  image: AssetImage(images[index]["Image1"]),
                  fit: BoxFit.fill,
                ),
                borderRadius: BorderRadius.all(Radius.circular(8.0)),
              ),
            ),
            back: GestureDetector(
              onTap: () {
                speakShape(index);
              },
              child: Container(
                child: SizedBox(
                  height: 30,
                  width: 30,
                  child: Container(child: Icon(Icons.volume_up)),
                ),
                alignment: Alignment.topRight,
                padding: EdgeInsets.only(right: 15, top: 10),
                decoration: BoxDecoration(
                  color: Color(0xFF006666),
                  image: DecorationImage(
                    image: AssetImage(images[index]["Image2"]),
                    fit: BoxFit.fill,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
