import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:worditkid/Screens/Pre-School/Exercises/Exercise2.dart';
import 'package:worditkid/Screens/Pre-School/Exercises/opposite/oppExe.dart';
import 'package:worditkid/Screens/Kindergarten/Exercise/ExerciseKG3.dart';

class RhymingWordHS extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("Images/Helpscreens/RhymingHPBg.png"),
            fit: BoxFit.fill
          )
        ),
        child:Column(
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(50, 145, 50, 35),
              child: Image.asset("Images/Helpscreens/rhymingHP.gif",),
            ),
            RaisedButton(
              color: Colors.orange[200],
              child: Text("GO",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.deepOrange
              ),),
              onPressed: (){
                Navigator.pop(context);
                Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) {
                  return Exercise2(
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

class VowelsHS extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("Images/Helpscreens/VowelsHPBG.png"),
                  fit: BoxFit.fill
              )
          ),
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(75, 190, 75, 35),
                child: Image.asset("Images/Helpscreens/VowelsHP.gif",

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
                    return Exercise4(
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

class OppositeHS extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("Images/Helpscreens/OppositeHPBG.png"),
                  fit: BoxFit.fill
              )
          ),
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(75, 220, 75, 35),
                child: Image.asset("Images/Helpscreens/OppositeHP.gif",

                ),
              ),
              RaisedButton(
                color: Colors.deepPurple[600],
                child: Text("GO",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                  ),),
                onPressed: (){
                  Navigator.pop(context);
                  Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) {
                    return OppExe(
                      max: 4,
                      min: 0,);

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
