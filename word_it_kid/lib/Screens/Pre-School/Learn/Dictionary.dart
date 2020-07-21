import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_tts/flutter_tts.dart';
class FirstRoute extends StatefulWidget {
  @override
  _FirstRouteState createState() => _FirstRouteState();
}

class _FirstRouteState extends State<FirstRoute> {
  List<Container> alphaList = new List();

  var inputs = [
    {"alphabet" : "A", "Image" : "Images/apple.png", "Image3" : "Images/ant.png",
      "Image2" : "Images/arrow.png", "Image1" : "Images/axe.png", "text1" : "Apple",
      "text2" : "Axe", "text3" : "Arrow", "text4" : "Ant"},
    {"alphabet" : "B" , "Image" : "Images/banana.png", "Image1" : "Images/bat.png",
      "Image2" : "Images/ball.png","Image3" : "Images/Bee.png","text1" : "Banana",
      "text2" : "Bat", "text3" : "Ball","text4" : "Bee",},
    {"alphabet" : "C", "Image" : "Images/cat.png","Image1" :"Images/cup.png",
      "Image2" : "Images/Camel.png","Image3" : "Images/car.png","text1" :"Cat",
      "text2" :"Cup","text3" : "Camel", "text4" :"Car" },
    {"alphabet" : "D", "Image" : "Images/dog.png", "Image1" : "Images/desk.png",
      "Image2" : "Images/duck.png", "Image3" : "Images/Donkey.png", "text1" : "Dog",
      "text2" : "Desk", "text3" : "Duck", "text4" : "Donkey"  },
    {"alphabet" : "E", "Image" : "Images/elephant.png","Image1" : "Images/egg.png",
      "Image2" : "Images/Engine.png", "Image3" : "Images/eagle.png", "text1" : "Elephant",
      "text2" : "Egg", "text3" : "Engine", "text4" : "Eagle"},
    {"alphabet" : "F", "Image" : "Images/fish.png", "Image1" :"Images/fire.png",
      "Image2" :"Images/fairy.png", "Image3" :"Images/frog.png", "text1" : "Fish",
      "text2" : "Fire","text3" : "Fairy","text4" : "Frog",},
    {"alphabet" : "G", "Image" : "Images/grapes.png","Image1" : "Images/gold.png",
      "Image2" : "Images/Guava.png", "Image3" : "Images/goat.png", "text1" : "Grapes",
      "text2" : "Gold", "text3" : "Guava", "text4" : "Goat" },
    {"alphabet" : "H", "Image" : "Images/hen.png","Image1" : "Images/Hat.png",
      "Image2" : "Images/Horse.png", "Image3" : "Images/hut.png", "text1" : "Hen",
      "text2" : "Hat", "text3" : "Horse", "text4" : "Hut"},
    {"alphabet" : "I", "Image" : "Images/IceCream.png", "Image1" : "Images/igloo.png",
      "Image2" : "Images/Injection.png","Image3" : "Images/inkpot.png", "text1" : "Ice - Cream",
      "text2" : "Igloo", "text3" : "Injection", "text4" : "Ink - Pot"},
    {"alphabet" : "J", "Image" : "Images/Jug.png", "Image1" : "Images/Jackal.png",
      "Image2" : "Images/joker.png", "Image3" : "Images/Jungle.png", "text1" : "Jug",
      "text2" : "Jackal", "text3" : "Joker", "text4" : "Jungle"},
    {"alphabet" : "K", "Image" : "Images/kite.png","Image1" : "Images/Kangaroo.png",
      "Image2" : "Images/kettle.png", "Image3" : "Images/king.png", "text1" : "Kite",
      "text2" : "Kangaroo", "text3" : "Kettle", "text4" : "King"},
    {"alphabet" : "L", "Image" : "Images/lion.png","Image1" : "Images/leopeard.png",
      "Image2" : "Images/lemon.png", "Image3" : "Images/lamp.png", "text1" : "Lion",
      "text2" : "Leopard", "text3" : "Lemon", "text4" : "Lamp"},
    {"alphabet" : "M", "Image" : "Images/mango.png","Image1" : "Images/mat.png",
      "Image2" : "Images/monkey.png", "Image3" : "Images/mouse.png", "text1" : "Mango",
      "text2" : "Mat", "text3" : "Monkey", "text4" : "Mouse"},
    {"alphabet" : "N", "Image" : "Images/nest.png", "Image1" : "Images/nose.png",
      "Image2" : "Images/net.png","Image3" : "Images/Nip.png", "text1" : "Nest",
      "text2" : "Nose", "text3" : "Net", "text4" : "Nip"},
    {"alphabet" : "O", "Image" : "Images/owl.png", "Image1" : "Images/ox.png",
      "Image2" : "Images/orange.png", "Image3" : "Images/oven.png", "text1" : "Owl",
      "text2" : "Ox", "text3" : "Orange", "text4" : "Oven"},
    {"alphabet" : "P", "Image" : "Images/peacock.png", "Image1" : "Images/pen.png",
      "Image2" : "Images/potato.png", "Image3" : "Images/pencil.png", "text1" : "Peacock",
      "text2" : "Pen", "text3" : "Potato", "text4" : "Pencil"},
    {"alphabet" : "Q", "Image" : "Images/queen.png","Image1" : "Images/Quote.png",
      "Image2" : "Images/quiet.png", "Image3" : "Images/quill.png", "text1" : "Queen",
      "text2" : "Quote", "text3" : "Quiet", "text4" : "Quill"},
    {"alphabet" : "R", "Image" : "Images/rose.png","Image1" : "Images/rat.png",
      "Image2" : "Images/ring.png", "Image3" : "Images/rack.png", "text1" : "Rose",
      "text2" : "Rat", "text3" : "Ring", "text4" : "Rack"},
    {"alphabet" : "S", "Image" : "Images/sun.png","Image1" : "Images/sing.png",
      "Image2" : "Images/snake.png", "Image3" : "Images/star.png", "text1" : "Sun",
      "text2" : "Sing", "text3" : "Snake", "text4" : "Star"},
    {"alphabet" : "T", "Image" : "Images/telephone.png","Image1" : "Images/train.png",
      "Image2" : "Images/toy.png", "Image3" : "Images/tea.png", "text1" : "Telephone",
      "text2" : "Train", "text3" : "Toy", "text4" : "Tea"},
    {"alphabet" : "U", "Image" : "Images/Umbrella.png","Image1" : "Images/uncle.png",
      "Image2" : "Images/urban.png", "Image3" : "Images/urn.png", "text1" : "Umbrella",
      "text2" : "Uncle", "text3" : "Urban", "text4" : "Urn"},
    {"alphabet" : "V", "Image" : "Images/Van.png","Image1" : "Images/Voilet.png",
      "Image2" : "Images/vest.png", "Image3" : "Images/violin.png", "text1" : "Van",
      "text2" : "Violet", "text3" : "Vest", "text4" : "Violin"},
    {"alphabet" : "W", "Image" : "Images/watch.png","Image1" : "Images/wall.png",
      "Image2" : "Images/wallet.png", "Image3" : "Images/wallnut.png", "text1" : "Watch",
      "text2" : "Wall", "text3" : "Wallet", "text4" : "Wallnut"},
    {"alphabet" : "X", "Image" : "Images/xylophone.png", "Image1" : "Images/X-ray.jpg",
      "Image2" : "Images/X-mas tree.png", "Image3" : "Images/x -ray.png", "text1" : "Xylophone",
      "text2" : "X-ray", "text3" : "X-mas Tree", "text4" : "X-Ray Fish"},
    {"alphabet" : "Y", "Image" : "Images/yak.png", "Image1" : "Images/yoga.png",
      "Image2" : "Images/yatch.png", "Image3" : "Images/yo - yo.png", "text1" : "Yak",
      "text2" : "Yoga", "text3" : "Yacht", "text4" : "Yo - Yo"},
    {"alphabet" : "Z", "Image" : "Images/zebra.png", "Image1" : "Images/Zero.png",
      "Image2" : "Images/zip.png", "Image3" : "Images/zoo.png", "text1" : "Zebra",
      "text2" : "Zero", "text3" : "Zip", "text4" : "Zoo"},
  ];

  buildList() async{
    for(int i = 0; i < inputs.length; i++){
      final element = inputs[i];
      alphaList.add(
          Container(
              color: Colors.green[900],
              child: Card(
                  color: Colors.yellowAccent ,
                  child : Column(
                    children: <Widget>[
                      Expanded(
                        flex: 8,
                        child : Hero(
                          tag: element["alphabet"],
                          child: new Material(
                            child: new InkWell(
                              onTap: ()=> Navigator.of(context).push(new MaterialPageRoute(
                                builder: (BuildContext context) => new Detail(
                                  alphabet: element["alphabet"],
                                  image: element["Image"],
                                  image2: element["Image1"],
                                  image3: element["Image2"],
                                  image4: element["Image3"],
                                  text1: element["text1"],
                                  text2: element["text2"],
                                  text3: element["text3"],
                                  text4: element["text4"],),)),
                              child: new Image.asset(element["Image"],
                                  fit: BoxFit.cover
                              ),
                            ),
                          ),
                        ),),
                      Expanded(
                          flex: 2,
                          child : Text(
                            element["alphabet"],
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          )
                      )],
                  )
              )
          )
      );
    }
  }

  void initState(){
    buildList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        child: Image.asset(
          "Images/Forest.png",
          fit: BoxFit.cover,
        ),
      ),
      backgroundColor: Colors.green[900],
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: AppBar(
          backgroundColor: Colors.green[900],
          elevation: 0,
          title: Padding(
            padding: EdgeInsets.only(top: 20),
            child:  Text(
              "ALPHANARY",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 46,
                color: Colors.yellowAccent,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
      body:GridView.count(
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
        crossAxisCount: 3,
        padding: EdgeInsets.all(8),
        children: alphaList,),
    );
  }
}

class Detail extends StatelessWidget {
  final FlutterTts _flutterTts = FlutterTts();
  @override
  String alphabet;
  String image;
  String image2;
  String image3;
  String image4;
  String text1;
  String text2;
  String text3;
  String text4;
  Detail({this.alphabet, this.image, this.image2, this.image3, this.image4,
    this.text1, this.text2, this.text3, this.text4});
  Widget build(BuildContext context) {
    speak() async{
      await _flutterTts.speak(alphabet);
    }
    return Scaffold(
      backgroundColor: Colors.green[900],
      body:  new ListView(
        children: <Widget>[
          Row(
            children: <Widget>[
              Text(
                alphabet + alphabet.toLowerCase(),
                style: TextStyle(
                  fontSize: 163,
                  fontWeight: FontWeight.bold,
                  color: Colors.yellowAccent,
                ),
              ),
              Container(
                  child: IconButton(
                      icon: Icon(Icons.volume_up),
                      onPressed:  () => speak()
                  )
              )
            ],
          ),
          Hero(
            tag : "alpha",
            child: new Material(
              color: Colors.green[900],
              child: new InkWell(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Card(
                            color: Colors.green,
                            child : Column(
                              children: <Widget>[
                                Image.asset(image,
                                  height: 150,
                                  width: 150,
                                  alignment: Alignment.bottomLeft,
                                ),
                                Text(text1,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20
                                  ),)
                              ],
                            )
                        ),
                        Card(
                          color: Colors.deepPurple,
                          child : Column(
                            children: <Widget>[
                              Image.asset(image2,
                                height: 150,
                                width: 150,
                                alignment: Alignment.bottomLeft,
                              ),
                              Text(text2,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20
                                ),)
                            ],
                          ) ,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Card(
                          color: Colors.amber,
                          child : Column(
                            children: <Widget>[
                              Image.asset(image3,
                                height: 150,
                                width: 150,
                                alignment: Alignment.bottomLeft,
                              ),
                              Text(text3,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20
                                ),)
                            ],
                          ),
                        ),
                        Card(
                          color: Colors.lightGreenAccent,
                          child : Column(
                            children: <Widget>[
                              Image.asset(image4,
                                height: 150,
                                width: 150,
                                alignment: Alignment.bottomLeft,
                              ),
                              Text(text4,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20
                                ),)
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}


