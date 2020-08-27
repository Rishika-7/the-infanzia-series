import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_tts/flutter_tts.dart';

class Veggies extends StatefulWidget {
  @override
  HomePage createState() => HomePage();
}

class HomePage extends State<Veggies> {
  final ScrollController _scrollController = ScrollController();
  final FlutterTts flutterTts = FlutterTts();

  speakVeggie(i) async {
    var veggies = [
      'cabbage',
      'carrot',
      'cauliflower',
      'onion',
      'potato',
      'spinach',
      'pumpkin',
      'lettuce',
      'garlic',
      'bottlegourd'
    ];

    await flutterTts.speak(veggies[i]);
  }

  List<Container> namingList = new List();

  var inputs = [
    'Images/Cabbage.png',
    'Images/Carrot.png',
    'Images/Cauliflower.png',
    'Images/Onion.png',
    'Images/Potato.png',
    'Images/Spinach.png',
    'Images/Pumpkin.png',
    'Images/Lettuce.png',
    'Images/Garlic.png',
    'Images/Bottlegourd.png',
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
                speakVeggie(i);
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
            image: AssetImage("Images/VegetablesBG.png"),
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
