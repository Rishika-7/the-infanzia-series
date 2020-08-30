import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'package:cloud_firestore/cloud_firestore.dart';

class Input extends StatefulWidget {
  @override
  InputState createState() => new InputState();
}

class InputState extends State<Input> {
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
        child: Disp(),
      ),
    );
  }
}

class Disp extends StatefulWidget {
  @override
  DemoCard createState() => new DemoCard();
}

class DemoCard extends State<Disp> {

  String id;
  final db = Firestore.instance;
  final _formKey = GlobalKey<FormState>();
  String name;
  String module;
  String age;

  String radioValue;

  setRadioValue(String value) {
    setState(() {
      radioValue = value;
      module = value;
    });
  }

  TextFormField buildTextFormField() {
    return TextFormField(
      cursorColor: Colors.green,
      textDirection: TextDirection.ltr,
      textAlign: TextAlign.center,

      decoration: InputDecoration(
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

      // ignore: missing_return
      validator: (value) {
        if (value.isEmpty) {
          return 'Please enter some text';
        }
      },
      onSaved: (value) => name = value,
    );
  }

  TextFormField buildTextFormFieldAge() {
    return TextFormField(
      cursorColor: Colors.green,
      textDirection: TextDirection.ltr,
      textAlign: TextAlign.center,

      decoration: InputDecoration(
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

      // ignore: missing_return
      validator: (value) {
        if (value.isEmpty) {
          return 'Please enter some text';
        }
      },
      onSaved: (value) => age = value,
    );
  }

  build(context) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.all(24),
      padding: EdgeInsets.all(8),
      width: MediaQuery.of(context).size.width,

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,

        children: <Widget>[

          Container(
            height: 200,
            child: Image(
              image: AssetImage("Images/Home/Heading.png"),
              fit: BoxFit.contain,
            ),
          ),

          Text(
            'ENTER NAME',
            style: TextStyle(
              color: Colors.yellow,
              fontSize: 20.0,
            ),
            textAlign: TextAlign.center,
          ),

          Form(
            key: _formKey,
            child: Column(
              children: <Widget>[

                buildTextFormField(),

                SizedBox(
                  height: 20,
                ),

                Text(
                  'ENTER AGE',
                  style: TextStyle(
                    color: Colors.yellow,
                    fontSize: 20.0,
                  ),
                  textAlign: TextAlign.center,
                ),

                buildTextFormFieldAge(),

                SizedBox(
                  height: 20,
                ),

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
                          color: Colors.green[800],
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
                          color: Colors.green[800],
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
              ],
            ),
          ),

          SizedBox(height: 20,),

          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FloatingActionButton(
                  heroTag: "4vb",
                  onPressed: (){
                    createData();

                    Navigator.of(context).pop(new MaterialPageRoute( builder: (BuildContext context) {
                      return Home();
                    }),
                    );

                  },

                  backgroundColor: Colors.green,
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

  void createData() async {

    if (_formKey.currentState.validate()) {
      _formKey.currentState.save();
      DocumentReference ref = await db.collection('USER').add({'name': '$name', 'module': '$module', 'age': '$age'});
      setState(() => id = ref.documentID);
      print(ref.documentID);
    }
  }
}
