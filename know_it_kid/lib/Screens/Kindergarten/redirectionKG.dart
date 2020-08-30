import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:knowitkid/Screens/Games/game.dart';
import 'package:knowitkid/Screens/Kindergarten/levelsKG.dart';
import 'package:knowitkid/Screens/Rhymes/rhymes.dart';


class Kindergarten extends StatelessWidget {

  final String name;
  final String age;
  Kindergarten({Key key, @required this.name, this.age}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),

      home: Scaffold(
        body: Container(
          child: Container(
            child: Column(
              children: <Widget>[

                SizedBox(
                  height: 200,
                ),

                Container(
                  margin: EdgeInsets.only(right: 40, top: 10),
                  alignment: Alignment.bottomRight,
                  child: SizedBox(
                    height: 50,
                    width: 150,
                    child: RaisedButton(
                      onPressed: () {
                        debugPrint('Clicked');
                        Navigator.push(context, MaterialPageRoute(builder: (context){
                          return KGLevels(
                            name: name,
                            age: age,
                          );
                        })
                        );
                      },

                      color: Colors.deepOrange,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)
                      ),

                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Image.asset(
                            "Images/LearnSymbol.png",
                            width: 30,
                            height: 30,
                          ),
                          Text(
                            "LEARN",
                            style: TextStyle(
                              color: Colors.black,
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
                  child: SizedBox(
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
                      color: Colors.deepOrange,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                  child: SizedBox(
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

                      color: Colors.deepOrange,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)
                      ),

                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Image.asset(
                            "Images/GamesSymbol.png",
                            width: 20,
                            height: 20,
                          ),
                          Text(
                            "PLAY",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),

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
