import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Screens/Pre-School/Exercise/Exercise(Color).dart';
import 'Screens/Pre-School/Exercise/Exercise(Shapes)/ShapesExe.dart';

class ColorsHS extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("Images/Helpscreen/ColorHSBG.png"),
                  fit: BoxFit.fill
              )
          ),
          child:Column(
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(50, 175, 50, 35),
                child: Image.asset("Images/Helpscreen/ColorsHS.gif",),
              ),
              RaisedButton(
                color: Colors.lightBlueAccent,
                child: Text("GO",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                  ),),
                onPressed: (){
                  Navigator.pop(context);
                  Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) {
                    return Coolors(
                    );

                  })
                  );
                },
              )

            ],
          )

      ),
    );
  }
}

class ShapesHS extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("Images/Helpscreen/ShapesHSBG.png"),
                  fit: BoxFit.fill
              )
          ),
          child:Column(
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(75, 210, 75, 35),
                child: Image.asset("Images/Helpscreen/ShapesHS.gif",

                ),
              ),
              RaisedButton(
                color: Colors.deepPurple[900],
                child: Text("GO",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                  ),),
                onPressed: (){
                  Navigator.pop(context);
                  Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) {
                    return ShapesExe(
                      min: 0,
                      max: 4,
                    );

                  })
                  );
                },
              )

            ],
          )

      ),
    );
  }
}

