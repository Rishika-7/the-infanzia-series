import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_tts/flutter_tts.dart';

class Animals extends StatefulWidget {
  @override
  HomePage createState() => HomePage();
}

class HomePage extends State<Animals> {

  final FlutterTts flutterTts = FlutterTts();

  speakAnimal(index) async {
    var animals = [
      'Wild Animals',
      'Lion',
      'Elephant',
      'Giraffe',
      'Tiger',
      'Monkey',
      'Zebra',
      'Pet Animals',
      'Cat',
      'Dog',
      'Hamster',
      'Rabbit',
      'Water Animals',
      'Dolphin',
      'Turtle',
      'Shark',
      'Whale',
      'Fish'
    ];

    await flutterTts.speak(animals[index]);
  }

  PageController pageController;

  //image list
  List<String> images = [
    'Images/wild_animals.png',
    'Images/wild_lion.png',
    'Images/wild_elephant.png',
    'Images/wild_giraffe.png',
    'Images/wild_tiger.png',
    'Images/wild_monkey.png',
    'Images/wild_zebra.png',
    'Images/pet_animals.png',
    'Images/pet_cat.png',
    'Images/pet_dog.png',
    'Images/pet_rabbit.png',
    'Images/pet_hamster.png',
    'Images/water_animals.png',
    'Images/water_dolphin.png',
    'Images/water_turtle.png',
    'Images/water_shark.png',
    'Images/water_whale.png',
    'Images/water_fish.png',
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
            image: AssetImage("Images/AnimalsBG.png"),
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
          speakAnimal(index);
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