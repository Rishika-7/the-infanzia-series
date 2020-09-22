import 'package:flutter/material.dart';
import 'package:worditkid/Screens/Pre-School/Exercises/Exercise2.dart';


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
