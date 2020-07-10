
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'RedirectionPage.dart';

class Home extends StatefulWidget {
  @override
  HomeState createState() => new HomeState();
}

class HomeState extends State<Home> {
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
            image: AssetImage("Images/HomeBG.png"),
            fit: BoxFit.fill,
          ),
        ),
        child: Card(),
      ),
    );
  }
}

class Card extends StatefulWidget {
  @override
  DemoCard createState() => new DemoCard();
}

class DemoCard extends State<Card> {
  String name = "";
  String radioValue;

  build(context) {
    return Container(
      alignment: Alignment.bottomCenter,
      margin: EdgeInsets.only(bottom: 80, left: 24, right: 24),
      padding: EdgeInsets.all(8),
      width: MediaQuery.of(context).size.width,

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,

        children: <Widget>[

          Container(
            alignment: Alignment.center,

            child: TextField(
              autofocus: true,
              cursorColor: Colors.green,
              textDirection: TextDirection.ltr,

              decoration: InputDecoration(
                contentPadding: EdgeInsets.only(left: 100.0),
                labelText: 'ENTER NAME',
                labelStyle: TextStyle(
                  color: Colors.yellow,
                  fontSize: 25.0,
                ),

                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.green,
                  ),
                ),
              ),

              style: TextStyle(
                fontSize: 25.0,
                color: Colors.green,
              ),
            ),
          ),


          SizedBox(height: 20,),

          Text(
            'SELECT GROUP',
            style: TextStyle(
              color: Colors.yellow,
              fontSize: 20.0,
            ),
            textAlign: TextAlign.center,
          ),

          Container(
            margin: EdgeInsets.only(top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[

                Container(
                  padding: EdgeInsets.only(top: 10, left: 10, right: 10),
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                  ),

                  child: Column(
                    children: <Widget>[
                      Text(
                        'PRE-\nSCHOOL',
                        style: TextStyle(
                          color: Colors.yellow,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Icon(Icons.pets),

                      SizedBox(
                        child: Radio(
                          onChanged: (String val) {
                            setRadioValue(val);
                          },
                          activeColor: Colors.yellow,
                          value: 'pre-school',
                          groupValue: radioValue,
                        ),
                      ),
                    ],
                  ),
                ),

                Container(
                  padding: EdgeInsets.only(top: 10, left: 10, right: 10),
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                  ),

                  child: Column(
                    children: <Widget>[
                      Text(
                        'KINDER\nGARTEN',
                        style: TextStyle(
                          color: Colors.yellow,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Icon(Icons.pets),

                      SizedBox(
                        child: Radio(
                          onChanged: (String val) {
                            setRadioValue(val);
                          },
                          activeColor: Colors.yellow,
                          value: 'kindergarten',
                          groupValue: radioValue,
                        ),
                      ),
                    ],
                  ),
                ),

              ],
            ),
          ),

          SizedBox(height: 20,),

          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FloatingActionButton(
                  onPressed: () {
                    debugPrint('Clicked');
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return RedirectionPage();
                    })
                    );
                  },
                  child: Center(
                    child: Text(
                      'GO',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  setRadioValue(String value) {
    setState(() {
      radioValue = value;
      print(radioValue);
    });
  }
}
