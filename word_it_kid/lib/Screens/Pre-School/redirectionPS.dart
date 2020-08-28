import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:worditkid/Screens/Games/game.dart';
import 'package:worditkid/Screens/Pre-School/levels.dart';
import 'package:worditkid/Screens/Rhymes/rhymes.dart';


class PS_RP extends StatelessWidget {

  final String name;
  PS_RP({Key key, @required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          child: Container(
            child: Column(
              children: <Widget>[

                Container(
                  alignment: Alignment.topLeft,
                  child: Image.asset("Images/Redirection/bird.png",
                    height: 170,
                    width: 160,
                    alignment: Alignment.topRight,
                    fit: BoxFit.fill,
                  ),
                ),

                Container(
                  alignment: Alignment.bottomRight,
                  child : SizedBox(
                    height: 50,
                    width: 150,
                    child: RaisedButton(
                      onPressed: () {
                        debugPrint('Clicked');
                        Navigator.push(context, MaterialPageRoute(builder: (context){
                          return Levels();
                        }));
                        },

                      color: Colors.amber,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)
                      ),

                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Image.asset(
                            "Images/Redirection/LearnSymbol.png",
                            width: 30,
                            height: 30,
                          ),
                          Text(
                            "LEARN",
                            style: TextStyle(
                              color: Colors.green[900],
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),


                Container(
                  alignment: Alignment.center,
                  child :SizedBox(
                    height: 50,
                    width: 150,
                    child: RaisedButton(
                      onPressed: () {
                        debugPrint('Clicked');
                        Navigator.push(context, MaterialPageRoute(builder: (context){
                          return Rhyme();
                        })
                        );
                        },
                      color: Colors.amber,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)
                      ) ,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Image.asset("Images/Redirection/singSymbol.png",
                            width: 30,
                            height: 30,
                            alignment: Alignment.bottomLeft,),
                          Text(
                            "SING",
                            style: TextStyle(
                              color: Colors.green[900],
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),

                        ],
                      ),
                    ),
                  ),
                ),

                Container(
                  alignment: Alignment.bottomRight,
                  child : SizedBox(
                    height: 50,
                    width: 150,
                    child: RaisedButton(
                      onPressed: () {
                        debugPrint('Clicked');
                        Navigator.push(context, MaterialPageRoute(builder: (context){
                          return Game();
                        })
                        );
                      },

                      color: Colors.amber,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)
                      ),

                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Image.asset(
                            "Images/Redirection/gamesSymbol.png",
                            width: 20,
                            height: 20,
                          ),
                          Text(
                            "PLAY",
                            style: TextStyle(
                              color: Colors.green[900],
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                Container(
                  alignment: Alignment.bottomLeft,
                  child: Image.asset("Images/Redirection/girrafe.png",
                    height: 200,
                    alignment: Alignment.bottomLeft,
                  ),
                ),

//                Image.asset(
//                  "Images/Redirection/frog.png",
//                  height: 70,
//                  width:  100,
//                  alignment: Alignment.bottomCenter,
//                ),


              ], ),

            constraints: BoxConstraints.expand(),
            decoration: BoxDecoration(
              image:  DecorationImage(
                  image: AssetImage("Images/Redirection/background.png"),
                  fit: BoxFit.fill
              ),
            ),
          ),
        ),
      ),
    );
  }
}