import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:knowitkid/Screens/Games/game.dart';
import 'package:knowitkid/Screens/Rhymes/rhymes.dart';


class PreSchool extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          child: Container(
            child: Column(
              children: <Widget>[
                Expanded (
                  flex: 3,
                  child : Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Container(
                        alignment: Alignment.bottomRight,
                        child : RaisedButton(
                          onPressed: () {
                            //debugPrint('Clicked');
                            //Navigator.push(context, MaterialPageRoute(builder: (context){
                              //return Levels();
                            //})
                            //);
                          },

                          color: Colors.deepOrange,
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
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18
                                ),
                              ),

                            ],
                          ),
                        ),
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
                              color: Colors.deepOrange,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)
                              ) ,
                              child: Row(
                                children: <Widget>[
                                  Image.asset("Images/SingSymbol.png",
                                    width: 30,
                                    height: 30,
                                    alignment: Alignment.bottomLeft,),
                                  Text(
                                    "SING",
                                    style: TextStyle(
                                        color: Colors.black,
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
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
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

                              color: Colors.deepOrange,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)
                              ) ,
                              child: Row(
                                children: <Widget>[
                                  Image.asset(
                                    "Images/GamesSymbol.png",
                                    width: 20,
                                    height: 20,
                                  ),
                                  Text(
                                    "  PLAY",
                                    style: TextStyle(
                                        color: Colors.black,
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
                  image: AssetImage("Images/Redirect2.png"),
                  fit: BoxFit.fill
              ),
            ),
          ),
        ),
      ),
    );
  }
}