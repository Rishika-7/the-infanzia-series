import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_tts/flutter_tts.dart';

class BodyParts extends StatefulWidget {

  @override
  HomePage createState() => HomePage();
}

class HomePage extends State<BodyParts> {
  final ScrollController _scrollController = ScrollController();
  final FlutterTts flutterTts = FlutterTts();


  speakPart(i) async {
    var parts = ['body parts', 'hair', 'eyes and eyebrows', 'ear', 'mouth', 'hands', 'leg and knee'];

    await flutterTts.speak(parts[i]);
  }

  List<Container> namingList = new List();

  var inputs = [
    'Images/humanparts.png',
    'Images/hair.png',
    'Images/eye&brow.png',
    'Images/ear.png',
    'Images/mouth.png',
    'Images/hands.png',
    'Images/leg&knee.png',
  ];

  buildList() async {
    for (int i = 0; i < inputs.length; i++) {
      final element = inputs[i];

      namingList.add(
        Container(
          child: Card(
            elevation: 5.0,
            color: Color(0x00000000),
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
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 40,
                    width: 40,
                    child: FloatingActionButton(
                      heroTag: i,
                      onPressed: () {
                        speakPart(i);
                      },
                      backgroundColor: Colors.blueAccent[200],
                      child: Icon(
                        Icons.tag_faces,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
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
            image: AssetImage("Images/BodypartsBG.png"),
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
