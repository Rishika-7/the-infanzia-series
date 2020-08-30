import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:audioplayers/audio_cache.dart';

class drag extends StatefulWidget {
  @override
  String img;
  drag({this.img});
  _dragState createState() => _dragState(img);
}

class _dragState extends State<drag> {
  @override
  String img;
  var alpha;

  _dragState(this.img){
     alpha = Container(
       height: 100,
       width: 100,
       color: Colors.blueAccent[200],
       padding: EdgeInsets.all(10),
       child: Image.asset(img),
     );
  }

  Widget build(BuildContext context) {
    return Draggable(
      child: alpha,

      feedback: Container(
        height: 100,
        width: 100,
        padding: EdgeInsets.all(10),
        child: Image.asset(img),
      ),

      data: img,
      childWhenDragging: Container(
        height: 100,
        width: 100,
        color: Colors.blueAccent[200],
        padding: EdgeInsets.all(10),
        child: Image.asset(img),
      ),

      onDragCompleted: () {
        setState(() {
          alpha = Container(
            color: Colors.blueAccent[200],
              height: 100,
              width: 100,);
        });
      },

    );
  }
}

class Target extends StatefulWidget {
  String imgURL;
  String alphabet;
  Target({this.imgURL, this.alphabet});
  @override
  _TargetState createState() => _TargetState(alphabet, imgURL);
}
class _TargetState extends State<Target> {
   String imgURL;
   String alphabet;
   var res;
   _TargetState(this.alphabet,this.imgURL){
      res = Container(
         height: 100,
         width: 100,
         color: Colors.blueAccent[200],
         padding: EdgeInsets.all(10),
         child: Image.asset(imgURL)
     );
   }
  @override

  Widget build(BuildContext context) {
    return DragTarget(
      builder: ( context,  List<String> data,  rejectedData) => res,
      onWillAccept: (data){
        return alphabet == data;
      },
      onAccept: (data){
      if(data == alphabet){
        setState(() {
          plyr.play('success.mp3');
          res = Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              color: Colors.blueAccent[200],
              image: DecorationImage(
                image: AssetImage(imgURL),
                fit: BoxFit.fill
              ),
            ),
            child: Image.asset("Images/tick.png"),
          );
        },
        );
      }

    },



    );
  }
}
AudioCache plyr = AudioCache();