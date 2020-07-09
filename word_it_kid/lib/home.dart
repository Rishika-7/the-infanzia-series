
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'RedirectionPage.dart';

class Home extends StatefulWidget {
  @override
  HomeState createState() => new HomeState();
}

class HomeState extends State<Home>{
  String name = "";
  String radioValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      resizeToAvoidBottomPadding: false,

      body: Container(
        alignment: Alignment.center,

        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("Images/HomeBG.png"),
            fit: BoxFit.fill,
          ),
        ),

        child: Column(
          children: <Widget>[

            Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(left: 65, right: 65),
                    padding: EdgeInsets.only(top: 380.0),
                    child: TextField(
                      autofocus: true,
                      cursorColor: Colors.green,
                      textDirection: TextDirection.ltr,

                      onChanged: (String textinput) {
                        setState(() {
                          name = textinput;
                        });
                      },

                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(left: 70),
                        labelText: 'ENTER NAME',
                        labelStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.yellow,
                        ),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.green,
                            )
                        ),
                      ),

                      style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 25.0,
                        fontWeight: FontWeight.w700,
                        color: Colors.green,
                      ),
                    ),
                  ),
                ),
              ],
            ),

            Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(left: 65, right: 65),
                    padding: EdgeInsets.only(top: 30.0),

                    child: Text(
                      "SELECT GROUP",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.yellow,
                        decoration: TextDecoration.none,
                        fontSize: 20.0,
                      ),
                      textAlign: TextAlign.center,
                      textDirection: TextDirection.ltr,
                    ),
                  ),
                ),
              ],
            ),

            Row(

              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[

                Padding(
                  padding: EdgeInsets.only(top: 160),
                ),

                SizedBox(
                  width: 145,
                  child: Radio(
                    onChanged: (String val) {
                      setRadioValue(val);
                    },
                    activeColor: Colors.green,
                    value: 'pre-school',
                    groupValue: radioValue,
                  ),
                ),

                SizedBox(
                  width: 110,
                  child: Radio(
                    onChanged: (String val) {
                      setRadioValue(val);
                    },
                    activeColor: Colors.green,
                    value: 'kindergarten',
                    groupValue: radioValue,
                  ),
                )
              ],
            ),

            Container(
              height: 22,
              width: 50,
              child: Material(
                borderRadius: BorderRadius.circular(120.0),
                color: Colors.green,
                elevation: 7.0,
                child: FloatingActionButton(
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
              ),
            ),
          ],
        ),
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
