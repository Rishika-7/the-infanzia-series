import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(

        body: Container(
          child: Container(
            child: Column(
              children: <Widget>[

                Expanded (
                  flex: 3,
                  child : Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Image.asset("Images/bird.png",
                        height: 120,
                        width: 200,
                        alignment: Alignment.topRight,
                      ),
                      Container(
                          alignment: Alignment.bottomRight,
                          child : RaisedButton(
                              onPressed: (){},
                              color: Colors.amber,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)
                              ) ,
                              child: Row(
                                children: <Widget>[
                                  Image.asset(
                                    "Images/LearnSymbol.png",
                                    width: 30,
                                    height: 30,
                                  ),
                                  Text(
                                    "  LEARN",
                                    style: TextStyle(
                                        color: Colors.green[900],
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18
                                    ),
                                  ),

                                ],
                              ))
                      ) ],
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Container(
                          alignment: Alignment.center,
                          child :RaisedButton(
                              onPressed: (){},
                              color: Colors.amber,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)
                              ) ,
                              child: Row(
                                children: <Widget>[
                                  Image.asset("Images/singSymbol.png",
                                    width: 30,
                                    height: 30,
                                    alignment: Alignment.bottomLeft,),
                                  Text(
                                    "SING",
                                    style: TextStyle(
                                        color: Colors.green[900],
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18
                                    ),
                                  ),

                                ],
                              ))
                      )],
                  ),
                ),
                Expanded (
                  flex: 4,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Image.asset("Images/girrafe.png",
                        height: 650,
                        width: 150,
                        alignment: Alignment.bottomLeft,
                      ),
                      Image.asset(
                        "Images/frog.png",
                        height: 70,
                        width:  100,
                        alignment: Alignment.bottomCenter,
                      ),
                      Container(
                          alignment: Alignment.topRight,
                          child :RaisedButton(
                              onPressed: (){},
                              color: Colors.amber,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)
                              ) ,
                              child: Row(
                                children: <Widget>[
                                  Image.asset(
                                    "Images/gamesSymbol.png",
                                    width: 20,
                                    height: 20,
                                  ),
                                  Text(
                                    "  PLAY",
                                    style: TextStyle(
                                        color: Colors.green[900],
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18
                                    ),
                                  ),
                                ],
                              ))
                      ) ],

                  ),)

              ], ),

            constraints: BoxConstraints.expand(),
            decoration: BoxDecoration(
              image:  DecorationImage(
                  image: AssetImage("Images/background.png"),
                  fit: BoxFit.fill
              ),
            ),
          ),

        ),



      ),
    );

  }
}