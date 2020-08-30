import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';


class drag extends StatefulWidget {
  @override
  String alphabet;
  drag({this.alphabet});
  _dragState createState() => _dragState(alphabet);
}

class _dragState extends State<drag> {
  @override
  String alphabet;
  var alpha;
  _dragState(this.alphabet){
     alpha = Container(
       width: 120,
        height: 100,
        color: Colors.blue[500],
        padding: EdgeInsets.fromLTRB(15, 20, 10, 10),
        child: Text(
          alphabet,
          style: TextStyle(
              fontSize: 32,
              color: Colors.blue[900],
            fontWeight: FontWeight.bold
          ),
        ));
  }

  Widget build(BuildContext context) {
    return Draggable(
      child: alpha,
      feedback: Container(
        child: Text(
          alphabet,
          style: TextStyle(
              color: Colors.blue[500]
          ),
        ),
      ),
      data: alphabet,
      childWhenDragging: Text(
        alphabet,
        style: TextStyle(
            fontSize: 30,
            color: Colors.grey
        ),
      ),

      onDragCompleted: () {
        setState(() {
          alpha = Container(
            color: Colors.blue[500],
              height: 100,
              width: 120,);
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
         width: 120,
         color: Colors.blue[500],
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
          res = Container(
            height: 100,
            width: 120,
            decoration: BoxDecoration(
              color: Colors.blue[500],
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
