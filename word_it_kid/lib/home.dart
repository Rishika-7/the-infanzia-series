import 'dart:math';

import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'Screens/Kindergarten/redirectionKG.dart';
import 'Screens/Pre-School/redirectionPS.dart';
import 'input.dart';


class Home extends StatefulWidget {
  @override
  HomeState createState() {
    return HomeState();
  }
}

class HomeState extends State<Home> {

  String id;
  final db = Firestore.instance;
  final _formKey = GlobalKey<FormState>();
  String name;
  String module;
  String age;

  int _value = 1;
  int tag = 1;

  Card buildItem(DocumentSnapshot doc) {
    return Card(
      color: Colors.amber[200],

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
              return PS_RP(
                name: '${doc.data['name']}',
                  age: '${doc.data['age']}'
              );
            }
            else{
              return KG_RP(
//                name: '${doc.data['name']}',
              );
            }
          })
          );

        },

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            Text(
              '${doc.data['name']}',
              style: TextStyle(
                fontSize: 34,
                color: Colors.green[900],
                fontWeight: FontWeight.normal,
              ),
            ),

            Text(
              '${doc.data['module']}',
              style: TextStyle(
                fontSize: 20,
                color: Colors.redAccent,
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
                            color: Colors.green[900],
                          ),
                          value: 1,
                        ),

                        DropdownMenuItem(
                          child: SizedBox(
                            height: 40,
                            child: FloatingActionButton(
                              heroTag: tag++,
                              onPressed: () => updateData(doc),
                              backgroundColor: Colors.green,
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
                              backgroundColor: Colors.green,
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
            image: AssetImage("Images/Home/HomeBG.png"),
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
                image: AssetImage("Images/Home/Heading.png"),
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

                    backgroundColor: Colors.green,
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