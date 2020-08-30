import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_tts/flutter_tts.dart';

class GoodHabits extends StatefulWidget {
  @override
  HomePage createState() => HomePage();
}

class HomePage extends State<GoodHabits> {

  final FlutterTts flutterTts = FlutterTts();

  speakHabit(index) async {
    var habits = [
      'Wake up early in the morning',
      'Brush your teeth twice a day',
      'Take a bath daily',
      'Wash your hands properly with soap',
      'Exercise daily',
      'Go to sleep early at night'
    ];

    await flutterTts.setLanguage("en-IN");
    await flutterTts.setSpeechRate(1);
    await flutterTts.speak(habits[index]);
  }

  PageController pageController;

  //image list
  List<String> images = [
    'Images/wakeup.png',
    'Images/brushing.png',
    'Images/bathedaily.png',
    'Images/washhands.png',
    'Images/exercise.png',
    'Images/sleepingearly.png'
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
            image: AssetImage("Images/GoodhabitsBG.png"),
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
          speakHabit(index);
        },
        child: Container(
          child: SizedBox(
            height: 10,
            width: 20,
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