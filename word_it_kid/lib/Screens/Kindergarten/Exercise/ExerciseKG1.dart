import 'dart:math';
import 'package:worditkid/Screens/Kindergarten/levelsKG.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';


void main() {
  runApp(
      MaterialApp(
        title: "Rhyming Words",
        home: Exercise1(),
      )
  );
}
class Exercise1 extends StatefulWidget {
  @override
  _Exercise1State createState() => _Exercise1State();
}

class _Exercise1State extends State<Exercise1> {
  Nouns noun1 = new Nouns("John", true);
  Nouns noun2 = new Nouns("Dog", true);
  Nouns noun3 = new Nouns("Net", true);
  Nouns noun4 = new Nouns("Doll", true);
  Nouns noun5 = new Nouns("Cake", true);

  Container nouns = Container(
    decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.yellow,
    ),
    padding: EdgeInsets.only(left: 10,right: 10,bottom: 10,top: 20),
    height: 100,
    width: 100,
    child: Text("John",
    style: TextStyle(
      fontSize: 30,
      color: Colors.amber,
      fontWeight: FontWeight.bold
    ),),
  );
  static Container path = Container(
    height: 100,
    width: 100,
    decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage("Images/ExerciseKGImages/path.png"),
        fit: BoxFit.cover
      )
    ),
  );

  Container dogBubble = Container(
    height: 100,
    width: 100,
    decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage("Images/ExerciseKGImages/path.png"),
            fit: BoxFit.cover
        )
    ),
    child: Image.asset("Images/dog.png",
    fit: BoxFit.cover,),
  );
  Container bubble1 = path;
  Container bubble2 = path;
  Container bubble3 = path;
  Container bubble4 = path;
  int count = 0;

  Container dog = new Container(
    child:  Image.asset("Images/dog.png",
      width: 100,
      height: 50,
    ),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("Images/seasons/summer-bg.png"),
                  fit: BoxFit.cover
              )
          ),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  SizedBox(
                    width: 260,
                  ),
                  Image.asset("Images/ExerciseKGImages/Kennel.png",
                  width: 100,
                  height: 200,
                  fit: BoxFit.fill,)
                ],
              ),
              Row(
                children: <Widget>[
                  SizedBox(width: 260,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      GestureDetector(
                          onTap: (){
                            setState(() {
                              count++;
                              noun1 = Nouns("John", false);
                              if(count == 1){
                                bubble4 = dogBubble;
                                dog = Container(
                                  child: Text("START",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.green[900],
                                  ),),
                                );

                              }
                              else if(count == 2){
                                bubble4 = path;
                                bubble3 = dogBubble;
                              }
                              else if(count == 3){
                                bubble3 = path;
                                bubble2 = dogBubble;
                              }
                              else if(count == 4){
                                bubble2 = path;
                                bubble1 = dogBubble;
                              }
                              else{
                                Navigator.of(context).push(new MaterialPageRoute(
                                    builder: (BuildContext context) =>KennelView(
                                    )));
                              }
                            });
                          },
                          child: noun1
                      ),
                      Nouns("Run", true)
                    ]..shuffle(Random(5)),
                  ),),
                  bubble1,
                ],
              ),
              Row(
                children: <Widget>[
                  SizedBox(width: 260,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      GestureDetector(
                          onTap: (){
                            setState(() {
                              count++;
                              noun2 = Nouns("Dog", false);
                              if(count == 1){
                                bubble4 = dogBubble;
                                dog = Container(
                                  child: Text("START",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.green[900]
                                    ),),
                                );

                              }
                              else if(count == 2){
                                bubble4 = path;
                                bubble3 = dogBubble;
                              }
                              else if(count == 3){
                                bubble3 = path;
                                bubble2 = dogBubble;
                              }
                              else if(count == 4){
                                bubble2 = path;
                                bubble1 = dogBubble;
                              }
                              else{
                                Navigator.of(context).push(new MaterialPageRoute(
                                    builder: (BuildContext context) =>KennelView(
                                    )));
                              }
                            });
                          },
                          child: noun2
                      ),
                      Nouns("Big", true),
                      Nouns("Eat", true),
                    ]..shuffle(Random(5)),
                  ),),
                  bubble2,
                ],
              ),
              Row(
                children: <Widget>[
                  SizedBox(width: 260,
                  child:  Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  GestureDetector(
                      onTap: (){
                        setState(() {
                          count++;
                          noun3 = Nouns("Net", false);
                          if(count == 1){
                            bubble4 = dogBubble;
                            dog = Container(
                              child: Text("START",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.green[900]
                                ),),
                            );

                          }
                          else if(count == 2){
                            bubble4 = path;
                            bubble3 = dogBubble;
                          }
                          else if(count == 3){
                            bubble3 = path;
                            bubble2 = dogBubble;
                          }
                          else if(count == 4){
                            bubble2 = path;
                            bubble1 = dogBubble;
                          }
                          else{
                            Navigator.of(context).push(new MaterialPageRoute(
                                builder: (BuildContext context) =>KennelView(
                                )));
                          }
                        });
                      },
                      child: noun3
                  ),
                  Nouns("Hot", true)
                ]..shuffle(Random(5)),
              ),),
                  bubble3,
                ],
              ),
              Row(
                children: <Widget>[
                  SizedBox(width: 260,
                    child:  Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  GestureDetector(
                      onTap: (){
                        setState(() {
                          count++;
                          noun4 = Nouns("Doll", false);
                          if(count == 1){
                            bubble4 = dogBubble;
                            dog = Container(
                              child: Text("START",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.green[900]
                                ),),
                            );
                          }
                          else if(count == 2){
                            bubble4 = path;
                            bubble3 = dogBubble;
                          }
                          else if(count == 3){
                            bubble3 = path;
                            bubble2 = dogBubble;
                          }
                          else if(count == 4){
                            bubble2 = path;
                            bubble1 = dogBubble;
                          }
                          else{Navigator.of(context).push(new MaterialPageRoute(
                              builder: (BuildContext context) =>KennelView(
                              )));}
                        });
                      },
                      child: noun4
                  ),
                  Nouns("Hot", true),
                  GestureDetector(
                      onTap: (){
                        setState(() {
                          count++;
                          noun5 = Nouns("Cake", false);
                          if(count == 1){
                            bubble4 = dogBubble;
                            dog = Container(
                              padding: EdgeInsets.all(10),
                              child: Text("START",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.green[900]
                                ),),
                            );
                          }
                          else if(count == 2){
                            bubble4 = path;
                            bubble3 = dogBubble;
                          }
                          else if(count == 3){
                            bubble3 = path;
                            bubble2 = dogBubble;
                          }
                          else if(count == 4){
                            bubble2 = path;
                            bubble1 = dogBubble;
                          }
                          else{
                            Navigator.of(context).pop(new MaterialPageRoute(
                                builder: (BuildContext context) =>KennelView(
                                )));
                          }
                        });

                      },
                      child: noun5
                  ),
                ]..shuffle(Random(5)),
              ),
                      ),
                  bubble4,
                ],
              ),
              Row(
                children: <Widget>[
                  SizedBox(width: 260,),
                  dog
                ],
              )

            ],
      ),
    ));
  }
}


class Nouns extends StatelessWidget {
  String word;
  bool decide;
  Nouns(String word, bool decide){
    this.word = word;
    this.decide = decide;
  }
  @override
  Widget build(BuildContext context) {
   if(!decide){
     return Container(
       decoration: BoxDecoration(
         shape: BoxShape.circle,
         color: Colors.amber
       ),
       height: 75,
       width: 75,
       padding: EdgeInsets.only(left: 10,right: 10,top: 20),
       child: Text(word.toUpperCase(),
         style: TextStyle(
             fontSize: 20,
             color: Colors.green,
             fontWeight: FontWeight.bold
         ),),
     );
   }
   else{
     return Container(
       height: 75,
       width: 75,
       child: Text(word.toUpperCase(),
         style: TextStyle(
             fontSize: 25,
             color: Colors.deepOrange,
             fontWeight: FontWeight.bold
         ),),
     );
   }
  }
}

class KennelView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("Images/seasons/KennelView.png"),
              fit: BoxFit.fill,
            ),
        ),
        child: Column(
          children: <Widget>[
            SizedBox(height: 560,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                FloatingActionButton(
                  heroTag: "btn1",
                  child: Icon(Icons.refresh),
                  onPressed: (){
                    Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) =>Exercise1(
                        )));
                  },),
                FloatingActionButton(
                  heroTag: "btn2",
                  child: Icon(Icons.arrow_back_ios),
                  onPressed: (){
                    Navigator.of(context).pop(new MaterialPageRoute(
                        builder: (BuildContext context) =>Levels(
                        )));
                  },),

              ],
            )
          ],
        )

      ),
    );
  }
}


