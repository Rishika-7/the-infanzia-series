import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:knowitkid/Screens/Kindergarten/redirectionKG.dart';
import 'package:knowitkid/Screens/Pre-School/redirectionPS.dart';

import 'Screens/input.dart';
import 'dart:math';

class Home extends StatefulWidget {
  @override
  HomeState createState() {
    return HomeState();
  }
}

class HomeState extends State<Home> {

  String id;
  final db = Firestore.instance;
  String name;
  String module;
  String age;

  int _value = 1;
  int tag = 1;

  Card buildItem(DocumentSnapshot doc) {
    return Card(
      color: Colors.blue[200],

      shape: RoundedRectangleBorder(
        side: BorderSide(color: Colors.white30, width: 1),
        borderRadius: BorderRadius.circular(20),
      ),

      margin: EdgeInsets.only(left: 80.0, right: 80, bottom: 30),

      child: InkWell(
        splashColor: Colors.blue.withAlpha(30),
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context){
            if('${doc.data['module']}'.contains('pre-school')) {
              return PreSchool(
                name: '${doc.data['name']}',
                age: '${doc.data['age']}',
              );
            }
            else{
              return Kindergarten(
                name: '${doc.data['name']}',
                age: '${doc.data['age']}',
              );
            }
          })
          );

        },

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            SizedBox(
              height: 10,
            ),

            Align(
              alignment: Alignment.center,
              child: CircleAvatar(
                radius: 60,

                child: ClipOval(
                  child: SizedBox(
                      width: 120.0,
                      height: 120.0,
                      child:Image.network("${doc.data['image']}", fit: BoxFit.fill,)
                  ),
                ),

              ),
            ),

            Text(
              '${doc.data['name']}',
              style: TextStyle(
                fontSize: 34,
                color: Colors.blue[900],
                fontWeight: FontWeight.normal,
              ),
            ),

            Text(
              '${doc.data['module']}',
              style: TextStyle(
                fontSize: 20,
                color: Colors.blue[900],
                fontWeight: FontWeight.bold,
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[

                Container(
                  padding: EdgeInsets.all(10.0),
                  child: DropdownButton(
                      value: _value,
                      items: [

                        DropdownMenuItem(
                          child: Icon(
                            Icons.settings,
                            color: Colors.blue[900],
                          ),
                          value: 1,
                        ),

                        DropdownMenuItem(
                          child: SizedBox(
                            height: 40,
                            child: FloatingActionButton(
                              heroTag: tag++,
                              onPressed: () => updateData(doc),
                              backgroundColor: Colors.lightBlue,
                              child: Center(
                                child: Icon(Icons.swap_horiz),
                              ),
                            ),
                          ),

                          value: 2,
                        ),

                        DropdownMenuItem(
                          child: SizedBox(
                            height: 40,
                            child: FloatingActionButton(
                              heroTag: tag++,
                              onPressed: () {
                                return deleteData(doc);
                              },
                              backgroundColor: Colors.lightBlue,
                              child: Center(
                                child: Icon(Icons.delete),
                              ),
                            ),
                          ),

                          value: 3,
                        ),
                      ],
                      onChanged: (value) {
                        setState(() {
                          _value = value;
                        });
                      }
                  ),
                ),
              ],
            )
          ],
        ),
      ),

    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        alignment: Alignment.center,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("Images/HomeBG.png"),
            fit: BoxFit.fill,
          ),
        ),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,

          children: <Widget>[
            Container(
              height: 200,
              margin: EdgeInsets.only(top: 100),
              child: Image(
                image: AssetImage("Images/Heading.png"),
                fit: BoxFit.contain,
              ),
            ),

            Container(
              margin: EdgeInsets.only(bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  FloatingActionButton(
                    heroTag: "x3",
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return Input();
                      })
                      );
                    },

                    backgroundColor: Colors.lightBlue,
                    child: Center(
                      child: Text(
                        'NEW',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),

                ],
              ),
            ),

            Expanded(
              child: ListView(
                shrinkWrap: true,
                padding: EdgeInsets.all(8),
                children: <Widget>[

                  StreamBuilder<QuerySnapshot>(
                    stream: db.collection('USER').snapshots(),
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        return Column(
                            children: snapshot.data.documents.map((doc) => buildItem(doc)).toList());
                      } else {
                        return SizedBox();
                      }
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void updateData(DocumentSnapshot doc) async {
    if (module == 'kindergarten'){
      module = 'pre-school';
    }
    else {
      module = 'kindergarten';
    }
    await db.collection('USER').document(doc.documentID).updateData({'module': '$module🤫'});
  }

  void deleteData(DocumentSnapshot doc) async {
    await db.collection('USER').document(doc.documentID).delete();
    setState(() => id = null);
  }

}