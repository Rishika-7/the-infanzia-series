import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_tts/flutter_tts.dart';

class Fruits extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Fruits',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        debugShowCheckedModeBanner: false,
        home: FruitsHomePage(title: 'Fruits'));
  }
}

class FruitsHomePage extends StatefulWidget {
  FruitsHomePage({Key key, this.title}) : super(key: key);

  final String title;
  @override
  _FruitsHomePageState createState() => _FruitsHomePageState();
}

class _FruitsHomePageState extends State<FruitsHomePage> {
  final FlutterTts flutterTts = FlutterTts();

  speakFruit(index) async {
    var fruits = [
      'apple',
      'banana',
      'orange',
      'watermelon',
      'grapes',
      'strawberry',
      'pineapple',
    ];

    await flutterTts.setLanguage("en-IN");
    await flutterTts.setSpeechRate(1);
    await flutterTts.speak(fruits[index]);
  }

  PageController pageController;

  //image list
  List<String> images = [
    "Images/Apple.png",
    "Images/Banana.png",
    "Images/Oranges.png",
    "Images/Watermelon.png",
    "Images/Grapes.png",
    "Images/Strawberrry.png",
    "Images/Pineapple.png"
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
            image: AssetImage("Images/FruitsBG.png"),
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
          value = (1 - (value.abs() - 0.4)).clamp(0.0, 1.0);
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
          speakFruit(index);
        },
        child: Container(
          child: SizedBox(
            height: 50,
            width: 50,
            child: Container(child: Icon(Icons.volume_up)),
          ),
          alignment: Alignment.topRight,
          decoration: BoxDecoration(
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
