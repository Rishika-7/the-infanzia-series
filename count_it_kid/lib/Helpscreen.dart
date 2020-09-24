import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Screens/Pre-School/Exercise/moreThanExe.dart';
import 'package:countitkid/Screens/Pre-School/Exercise/tracingExercise.dart';
import 'Screens/Pre-School/Exercise/tracingExercise.dart';

class GreaterThanHS extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("Images/Helpscreens/GreaterthanHSBG.png"),
                  fit: BoxFit.fill
              )
          ),
          child:Column(
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(60, 280, 50, 35),
                child: Image.asset("Images/Helpscreens/GreaterThanHS.gif",),
              ),
              RaisedButton(
                color: Colors.lightBlueAccent[100],
                child: Text("GO",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                  ),),
                onPressed: (){
                  Navigator.pop(context);
                  Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) {
                    return morethanExe(
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

class TracingHS extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("Images/Helpscreens/TracingHSBG.png"),
                  fit: BoxFit.fill
              )
          ),
          child:Column(
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(40, 180, 40, 35),
                child: Image.asset("Images/Helpscreens/TracingHS.gif",
                height: MediaQuery.of(context).size.height/2,),
                width: MediaQuery.of(context).size.width,
              ),
              RaisedButton(
                color: Colors.greenAccent,
                child: Text("GO",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                  ),),
                onPressed: (){
                  Navigator.pop(context);
                  Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) {
                    return WhiteBoard(
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