import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:image_picker/image_picker.dart';

import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:path/path.dart';


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
  File _image;

  setRadioValue(String value) {
    setState(() {
      radioValue = value;
      module = value;
    });
  }

  Future getImage() async {
    var image = await ImagePicker.pickImage(source: ImageSource.gallery);

    setState(() {
      _image = image;
      print('Image Path $image');
    });
  }

  TextFormField buildTextFormField() {
    return TextFormField(
      cursorColor: Colors.black,
      textDirection: TextDirection.ltr,
      textAlign: TextAlign.center,

      decoration: InputDecoration(
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.black,
          ),
        ),
      ),

      style: TextStyle(
        fontSize: 25.0,
        color: Colors.black,
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
      cursorColor: Colors.black,
      textDirection: TextDirection.ltr,
      textAlign: TextAlign.center,

      decoration: InputDecoration(
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.black,
          ),
        ),
      ),

      style: TextStyle(
        fontSize: 25.0,
        color: Colors.black,
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

          Align(
            alignment: Alignment.center,
            child: CircleAvatar(
              radius: 80,
              backgroundColor: Color(0xff476cfb),
              child: ClipOval(
                child: SizedBox(
                  width: 180.0,
                  height: 180.0,
                  child: (_image != null) ? Image.file(_image, fit: BoxFit.fill,)
                      :Image.network(
                    "https://images.unsplash.com/photo-1572879440402-9de0b10cf023?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1351&q=80",
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
          ),

          IconButton(
            icon: Icon(
              FontAwesomeIcons.camera,
              color: Colors.black,
              size: 30.0,
            ),
            onPressed: (){
              getImage();
            },
          ),

          SizedBox(
            height: 10,
          ),


          Text(
            'ENTER NAME',
            style: TextStyle(
              color: Colors.black,
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
                    color: Colors.black,
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
                    color: Colors.black,
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
                          color: Colors.blue[800],
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                        ),

                        child: Column(
                          children: <Widget>[
                            Text(
                              'PRE-\nSCHOOL',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                              textAlign: TextAlign.center,
                            ),

                            Icon(Icons.pets),

                            SizedBox(
                              child: Radio(
                                onChanged: (String val) {
                                  setRadioValue(val);
                                },
                                activeColor: Colors.black,
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
                          color: Colors.blue[800],
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                        ),

                        child: Column(
                          children: <Widget>[
                            Text(
                              'KINDER\nGARTEN',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                              textAlign: TextAlign.center,
                            ),

                            Icon(Icons.pets),

                            SizedBox(
                              child: Radio(
                                onChanged: (String val) {
                                  setRadioValue(val);
                                },
                                activeColor: Colors.black,
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
                    createData(context);

                  },

                  backgroundColor: Colors.lightBlue,
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

  Future createData(BuildContext context) async {

    String fileName = basename(_image.path);

    StorageReference firebaseStorageRef = FirebaseStorage.instance.ref().child(fileName);
    StorageUploadTask uploadTask = firebaseStorageRef.putFile(_image);
    StorageTaskSnapshot taskSnapshot = await uploadTask.onComplete;
    String url = await taskSnapshot.ref.getDownloadURL();


    setState(() {
      print("Profile Picture Uploaded");
      Scaffold.of(context).showSnackBar((SnackBar(content: Text("Profile Picture Uploaded"),)));
    });

    if (_formKey.currentState.validate()) {
      _formKey.currentState.save();
      DocumentReference ref = await db.collection('USER').add({'name': '$name', 'module': '$module', 'age': '$age', 'image': '$url'});
      setState(() => id = ref.documentID);
      print(ref.documentID);
    }
  }
}
