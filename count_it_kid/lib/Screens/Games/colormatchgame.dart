import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';
import 'package:audioplayers/audio_cache.dart';

class ColorGame extends StatefulWidget {
  ColorGame({Key key}) : super(key: key);

  createState() => ColorGameState();
}

class ColorGameState extends State<ColorGame> {
  /// Map to keep track of score
  final Map<String, bool> score = {};

  /// Choices for game
  final Map choices = {
    '👾‍': Colors.purpleAccent,
    '🌳': Colors.green[400],
    '💧': Colors.blue[300],
    '🎈‍': Colors.red,
    '⭐': Colors.yellow[600],
    '🌑': Colors.blueGrey[700]
  };

  // Random seed to shuffle order of items.
  int seed = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
              'Color Match Game',
              style: TextStyle(
                  color: Colors.black,
              fontSize: 24,
              fontWeight: FontWeight.bold)),
          backgroundColor: Colors.lightBlueAccent[200]),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("Images/MatchColor.png"),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: choices.keys.map((emoji) {
                      return Draggable<String>(
                        data: emoji,
                        child: Emoji(emoji: score[emoji] == true ? '✅' : emoji),
                        feedback: Emoji(emoji: emoji),
                        childWhenDragging: Emoji(emoji: '❔'),
                      );
                    }).toList()),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: choices.keys
                      .map((emoji) => _buildDragTarget(emoji))
                      .toList()
                    ..shuffle(Random(seed)),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                FlatButton(
                  color: Colors.lightBlueAccent[200],
                  child: Text('Help', style: TextStyle(fontSize: 22, color: Colors.black)),
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text('How to Play?',
                                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                            content: Text(
                              '          ❤🧡💛💚💙💜🤎 \n\n'
                                  'Match the objects to their colour\n\n'
                                  'Just Drag and Drop 👆➡✔',
                              style: TextStyle(fontSize: 20),
                            ),
                            actions: <Widget>[
                              FlatButton(
                                child: Text(
                                  "Let's Play!",
                                  style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                                ),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                              )
                            ],
                          );
                        });
                  },
                ),
                Text(
                  'Score ${score.length} / 6',
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                FloatingActionButton(
                  child: Icon(Icons.refresh),
                  backgroundColor: Colors.lightBlueAccent[200],
                  onPressed: () {
                    setState(() {
                      score.clear();
                      seed++;
                    });
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDragTarget(emoji) {
    return DragTarget<String>(
      builder: (BuildContext context, List<String> incoming, List rejected) {
        if (score[emoji] == true) {
          return Container(
            color: Colors.white,
            child: Text('Correct!', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
            alignment: Alignment.center,
            height: 70,
            width: 120,
          );
        } else {
          return Container(color: choices[emoji], height: 70, width: 120);
        }
      },
      onWillAccept: (data) => data == emoji,
      onAccept: (data) {
        setState(() {
          score[emoji] = true;
          plyr.play('success.mp3');
        });
      },
      onLeave: (data) {},
    );
  }
}

class Emoji extends StatelessWidget {
  Emoji({Key key, this.emoji}) : super(key: key);

  final String emoji;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Container(
        alignment: Alignment.center,
        height: 70,
        padding: EdgeInsets.all(10),
        child: Text(
          emoji,
          style: TextStyle(color: Colors.black, fontSize: 50),
        ),
      ),
    );
  }
}

AudioCache plyr = AudioCache();
