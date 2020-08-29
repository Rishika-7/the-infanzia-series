import 'package:countitkid/Screens/Games/game.dart';
import 'package:countitkid/Screens/Pre-School/ps_levels.dart';
import 'package:countitkid/Screens/Rhymes/rhymes.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PSRedirectionPage extends StatelessWidget {
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
                  child: Image.asset("Images/Redirection/alien.png",
                    height: 170,
                    width: 160,
                    alignment: Alignment.topRight,
                    fit: BoxFit.fill,
                  ),
                ),

                Container(
                  margin: EdgeInsets.only(right: 40, top: 10),
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

                      color: Colors.deepPurpleAccent[100],
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
                              color: Colors.deepPurpleAccent[50],
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
                  margin: EdgeInsets.only(top: 60),
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

                      color: Colors.deepPurpleAccent[100],
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
                              color: Colors.deepPurpleAccent[50],
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
                  margin: EdgeInsets.only(right: 40, top: 60),
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

                      color: Colors.deepPurpleAccent[100],
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)
                      ),

                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Image.asset(
                            "Images/Redirection/gamesSymbol.png",
                            width: 40,
                            height: 40,
                          ),
                          Text(
                            "PLAY",
                            style: TextStyle(
                              color: Colors.deepPurpleAccent[50],
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                SizedBox(
                  height: 100,
                ),

                Container(
                  alignment: Alignment.bottomRight,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Container(
                        alignment: Alignment.bottomLeft,
                        child: Image.asset("Images/Redirection/alienp.png",
                          height: 200,
                          alignment: Alignment.bottomLeft,
                        ),
                      ),
                    ],
                  ),
                ),

              ],
            ),

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