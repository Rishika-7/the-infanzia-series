import 'package:countitkid/Screens/Pre-School/Dictionary.dart';
import 'package:countitkid/Screens/Games/game.dart';
import 'package:countitkid/Screens/rhymes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RedirectionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
                      Image.asset("Images/alien.png",
                        height: 120,
                        width: 200,
                        alignment: Alignment.topRight,
                        fit: BoxFit.fill,
                      ),
                      Container(
                          alignment: Alignment.bottomRight,
                          child : RaisedButton(
                              onPressed: () {
                                debugPrint('Clicked');
                                Navigator.push(context, MaterialPageRoute(builder: (context){
                                  return FirstRoute();
                                })
                                );
                              },
                              color: Colors.deepPurpleAccent,
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
                                        color: Colors.deepPurpleAccent[50],
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
                              onPressed: () {
                                debugPrint('Clicked');
                                Navigator.push(context, MaterialPageRoute(builder: (context){
                                  return Rhyme();
                                })
                                );
                              },
                              color: Colors.deepPurpleAccent,
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
                                        color: Colors.deepPurpleAccent[50],
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
                      Image.asset("Images/alienp.png",
                        height: 650,
                        width: 150,
                        alignment: Alignment.bottomLeft,
                      ),
                      Container(
                        height: 70,
                        width:  100,
                        alignment: Alignment.bottomCenter,
                      ),
                      Container(
                          alignment: Alignment.topRight,
                          child :RaisedButton(
                              onPressed: () {
                                debugPrint('Clicked');
                                Navigator.push(context, MaterialPageRoute(builder: (context){
                                  return Game();
                                })
                                );
                              },
                              color: Colors.deepPurpleAccent,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)
                              ) ,
                              child: Row(
                                children: <Widget>[
                                  Image.asset(
                                    "Images/gamesSymbol.png",
                                    width: 40,
                                    height: 40,
                                  ),
                                  Text(
                                    "  PLAY",
                                    style: TextStyle(
                                        color: Colors.deepPurpleAccent[50],
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