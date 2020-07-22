import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_tts/flutter_tts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: FirstRoute()
    );
  }
}

class FirstRoute extends StatefulWidget {
  @override
  _FirstRouteState createState() => _FirstRouteState();
}

class _FirstRouteState extends State<FirstRoute> {
  List<Container> alphaList = new List();

  var inputs = [
    {"alphabet" : "One", "Image" : "https://www.clker.com/cliparts/9/x/p/4/t/F/number-one-red-md.png",
      "Image1" : "https://th.bing.com/th/id/OIP.GzdYzHB-9yCH_QEAes4RngHaHa?pid=Api&rs=1",
      "text1" : "Apple", "text2" : "Axe", "text3" : "Arrow",},
    {"alphabet" : "Two", "Image" : "https://i.pinimg.com/originals/96/e6/85/96e6853530aee5991d93b34bc583b72c.png",
      "Image1" : "https://th.bing.com/th/id/OIP._efAgxGNXuXHTZ0aXpEdkwHaG3?pid=Api&rs=1",
      "text1" : "Apple", "text2" : "Axe", "text3" : "Arrow",},
    {"alphabet" : "Three", "Image" : "https://webstockreview.net/images/3-clipart-pink-number-3-6.png",
      "Image1" : "https://th.bing.com/th/id/OIP.wsgJVm6aMluS9xc6zjZZcgHaD-?pid=Api&rs=1",
      "text1" : "Apple", "text2" : "Axe", "text3" : "Arrow",},
    {"alphabet" : "Four", "Image" : "http://www.clker.com/cliparts/h/F/I/Y/O/p/animal-number-four-hi.png",
      "Image1" : "https://th.bing.com/th/id/OIP.Zwj4iUtpGgU6hvNYnxFIuAHaHa?pid=Api&w=800&h=800&rs=1",
      "text1" : "Apple", "text2" : "Axe", "text3" : "Arrow",},
    {"alphabet" : "Five", "Image" : "http://clipart-library.com/img/1803800.png",
      "Image1" : "https://th.bing.com/th/id/OIP.Cz5EOJnt6bIiusuHb-enzwAAAA?pid=Api&rs=1",
      "text1" : "Apple", "text2" : "Axe", "text3" : "Arrow",},
    {"alphabet" : "six", "Image" : "https://content.mycutegraphics.com/graphics/number/cartoon-number-six.png",
      "Image1" : "https://media.istockphoto.com/vectors/strawberry-chocolate-vector-set-vector-id889641026?k=6&m=889641026&s=612x612&w=0&h=p5aOWMfDj0d_kjkWyeqR8taITnRE7CII0w_FsHDJYjg=",
      "text1" : "Apple", "text2" : "Axe", "text3" : "Arrow",},
    {"alphabet" : "Seven", "Image" : "http://clipground.com/images/seven-clipart-7.jpg",
      "Image1" : "https://thumbs.dreamstime.com/t/many-colorful-balloons-rainbow-colors-many-colorful-balloons-rainbow-colors-vector-illustration-eps-127053830.jpg",
      "text1" : "Apple", "text2" : "Axe", "text3" : "Arrow",},
    {"alphabet" : "Eight", "Image" : "http://clipground.com/images/numbers-clipart-png-2.png",
      "Image1" : "http://www.webdesignhot.com/wp-content/uploads/2011/02/Vector-Stars_thumb.jpg",
      "text1" : "Apple", "text2" : "Axe", "text3" : "Arrow",},
    {"alphabet" : "Nine", "Image" : "http://clipground.com/images/nine-clipart-12.jpg",
      "Image1" : "https://thumbs.dreamstime.com/b/smiley-emoticon-set-yellow-face-emotions-christmas-hat-new-year-santa-winter-emoji-sad-happy-angry-faces-funny-cartoon-132031747.jpg",
      "text1" : "Apple", "text2" : "Axe", "text3" : "Arrow",},
    {"alphabet" : "Ten", "Image" : "http://www.pngplay.com/wp-content/uploads/1/10-Number-PNG-HD-Free-Image.png",
      "Image1" : "http://clipground.com/images/candies-clipart-8.jpg",
      "text1" : "Apple", "text2" : "Axe", "text3" : "Arrow",},

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
                                  text1: element["text1"],
                                  text2: element["text2"],
                                  text3: element["text3"],
                                ),)),
                              child: new Image.network(element["Image"],
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
    return Container(
      child: Scaffold(
          backgroundColor: Colors.deepPurple[900],
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(100),
            child: AppBar(
              backgroundColor: Colors.deepPurple[900],
              elevation: 0,
              title: Padding(
                padding: EdgeInsets.only(top: 20),
                child:  Text(
                  "NUMONARY",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 46,
                    color: Colors.yellowAccent[100],
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          body:Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("Images/background.png"),
                fit: BoxFit.fill,

              ),
            ),
            child: GridView.count(
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
              crossAxisCount: 2,
              padding: EdgeInsets.all(8),
              children: alphaList,),
          )
      ),
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
    return Container(
      child: Scaffold(

        backgroundColor: Colors.deepPurple[900],
        body:  Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[

            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(bottom: 50),
                  child: Image.network(image),
                  height: 200,
                ),
                Container(
                    margin: EdgeInsets.only(bottom: 50),
                    child: IconButton(
                        icon: Icon(Icons.volume_up),
                        onPressed:  () => speak()
                    )
                )
              ],
            ),
            Image.network(image2,
              alignment: Alignment.bottomCenter,
              fit: BoxFit.fill,
              height: 350,
            )
          ],
        ),
      ),
    );
  }
}


