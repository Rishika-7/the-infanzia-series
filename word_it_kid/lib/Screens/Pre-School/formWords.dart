import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FormWords extends StatefulWidget {
  @override
  FormState createState() => new FormState();
}

class FormState extends State<FormWords> {
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
            image: AssetImage("Images/seasons/winter-bg.png"),
            fit: BoxFit.fill,
          ),
        ),
        child: Card(),
      ),
    );
  }
}