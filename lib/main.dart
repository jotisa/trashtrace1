import 'package:flutter/material.dart';
import 'SignUpPage.dart';
import 'helpers/Constants.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: appTitle,
        theme: new ThemeData(
          primaryColor: appBackColor,
        ), //ThemeData
        home: SignUpPage() // just added
    );//Material App
  }//B  uild
}// Fin class