import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_tts/flutter_tts.dart';

class Seasons extends StatefulWidget {
  @override
  HomePage createState() => HomePage();
}

class HomePage extends State<Seasons> {
  PageController pageController;
  final FlutterTts flutterTts = FlutterTts();

  speakSeason(index) async {
    var seasons = [
      "Spring! Warm! Spring is warm. Flower! Spring is flowering season.",
      'Summer! Hot! Summer is very hot. Beach! I like to go to beach in summer.',
      'Rainy! Wet! Rain is wet. Umbrella! I carry an umbrella in rainy season',
      'Fall! Cool! Fall is cool. Leaves! Leaves fall in fall season.',
      'Winter! Cold! Winter is very cold. Snow! I like to make snowman in winter.'
    ];

    await flutterTts.speak(seasons[index]);
  }

  //image list
  var images = [
    {"Image1": "Images/spring_f.png", "Image2": "Images/spring_b.png"},
    {"Image1": "Images/summer_f.png", "Image2": "Images/summer_b.png"},
    {"Image1": "Images/rainy_f.png", "Image2": "Images/rainy_b.png"},
    {"Image1": "Images/autumn_f.png", "Image2": "Images/autumn_b.png"},
    {"Image1": "Images/winter_f.png", "Image2": "Images/winter_b.png"}
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
            image: AssetImage("Images/SeasonsBG.png"),
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
                speakSeason(index);
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
