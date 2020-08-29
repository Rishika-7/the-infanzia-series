import 'package:flutter/material.dart';
import 'package:worditkid/Screens/Kindergarten/levelsKG.dart';
import 'package:worditkid/Screens/Kindergarten/redirectionKG.dart';

import 'home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Home(),
    );
  }

}
