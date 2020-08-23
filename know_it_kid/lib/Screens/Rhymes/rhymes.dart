
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Rhyme extends StatefulWidget {
  @override
  RhymeState createState() => new RhymeState();
}

class RhymeState extends State<Rhyme> {
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
            image: AssetImage("Images/RhymesBG.png"),
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
  YoutubePlayerController _controller1 = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId(
          "https://youtu.be/yCjJyiqpAuU"),
      flags: YoutubePlayerFlags(
        autoPlay: false,
        mute: false,
      )
  );

  YoutubePlayerController _controller2 = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId(
          "https://youtu.be/F4tHL8reNCs"),
      flags: YoutubePlayerFlags(
        autoPlay: false,
        mute: false,
      )
  );

  YoutubePlayerController _controller3 = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId(
          "https://youtu.be/MR5XSOdjKMA"),
      flags: YoutubePlayerFlags(
        autoPlay: false,
        mute: false,
      )
  );

  YoutubePlayerController _controller4 = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId(
          "https://youtu.be/0oKreL1jvkg"),
      flags: YoutubePlayerFlags(
        autoPlay: false,
        mute: false,
      )
  );

  YoutubePlayerController _controller5 = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId(
          "https://youtu.be/LIWbUjHZFTw"),
      flags: YoutubePlayerFlags(
        autoPlay: false,
        mute: false,
      )
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.only(top: 190, bottom: 220, left: 40, right: 40),

      child: ListView(
        children: <Widget>[

          Container(
            padding: EdgeInsets.all(20),
            height: 200,
            child: YoutubePlayer(
              controller: _controller1,
              showVideoProgressIndicator: true,
              progressIndicatorColor: Colors.blueAccent,
            ),
          ),

          Container(
            padding: EdgeInsets.all(20),
            height: 200,
            child: YoutubePlayer(
              controller: _controller2,
              showVideoProgressIndicator: true,
              progressIndicatorColor: Colors.blueAccent,
            ),
          ),

          Container(
            padding: EdgeInsets.all(20),
            height: 200,
            child: YoutubePlayer(
              controller: _controller3,
              showVideoProgressIndicator: true,
              progressIndicatorColor: Colors.blueAccent,
            ),

          ),

          Container(
            padding: EdgeInsets.all(20),
            height: 200,
            child: YoutubePlayer(
              controller: _controller4,
              showVideoProgressIndicator: true,
              progressIndicatorColor: Colors.blueAccent,
            ),

          ),

          Container(
            padding: EdgeInsets.all(20),
            height: 200,
            child: YoutubePlayer(
              controller: _controller5,
              showVideoProgressIndicator: true,
              progressIndicatorColor: Colors.blueAccent,
            ),
          ),
        ],
      ),
    );
  }
}
