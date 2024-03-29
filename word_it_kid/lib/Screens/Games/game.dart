
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:worditkid/Screens/Games/MemoryGame.dart';
import 'package:worditkid/Screens/Games/SnakeGame.dart';
import 'package:worditkid/Screens/Games/TicTacToe.dart';
import 'ColorMatchGame.dart';

class Game extends StatefulWidget {
  @override
  GameState createState() => new GameState();
}

class GameState extends State<Game> {
  String name = "";
  String radioValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,

      body: Container(
        alignment: Alignment.center,
        height: MediaQuery.of(context).size.height,

        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("Images/Games/GameBG.png"),
            fit: BoxFit.fill,
          ),
        ),
        child: Grid(),
      ),
    );
  }
}

class Grid extends StatefulWidget {
  @override
  GridApp createState() => new GridApp();
}

class GridApp extends State<Grid> {
  String name = "";
  String radioValue;

  build(context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      alignment: Alignment.center,
      margin: EdgeInsets.all(15),

      child: GridView.count(
        shrinkWrap: true,
        crossAxisCount: 2,
        scrollDirection: Axis.vertical,
        children: <Widget>[

          Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.only(bottom: 5),
            alignment: Alignment.bottomCenter,

            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("Images/Games/memory-game.png"),
                fit: BoxFit.fill,
              ),
            ),

            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,

              children: <Widget>[
                FloatingActionButton(
                  heroTag: "btn1",
                  onPressed: () {
                    debugPrint('Clicked');
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return MemoryGame();
                    })
                    );
                  },
                  backgroundColor: Colors.orange,
                  child: Center(
                    child: Text(
                      'GO',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.only(bottom: 5),
            alignment: Alignment.bottomCenter,

            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("Images/Games/ttt.png"),
                fit: BoxFit.fill,
              ),
            ),

            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,

              children: <Widget>[
                FloatingActionButton(
                  heroTag: "btn2",
                  onPressed: () {
                    debugPrint('Clicked');
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return TicTacToe();
                    })
                    );
                  },
                  backgroundColor: Colors.redAccent,
                  child: Center(

                    child: Text(
                      'GO',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.only(bottom: 5),
            alignment: Alignment.bottomCenter,

            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("Images/Games/snake-game.png"),
                fit: BoxFit.fill,
              ),
            ),

            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,

              children: <Widget>[
                FloatingActionButton(
                  heroTag: "btn3",
                  onPressed: () {
                    debugPrint('Clicked');
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return Snake_Game();
                    })
                    );
                  },
                  backgroundColor: Colors.lightGreen,
                  child: Center(

                    child: Text(
                      'GO',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),


          Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.only(bottom: 5),
            alignment: Alignment.bottomCenter,

            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("Images/Games/gtc.png"),
                fit: BoxFit.fill,
              ),
            ),

            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,

              children: <Widget>[
                FloatingActionButton(
                  heroTag: "btn4",
                  onPressed: () {
                    debugPrint('Clicked');
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return ColorGame();
                    })
                    );
                  },
                  backgroundColor: Colors.blue,
                  child: Center(
                    child: Text(
                      'GO',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}