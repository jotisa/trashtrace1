import 'package:flutter/material.dart';
import 'helpers/Constants.dart';

//1
class SignUpPage extends StatelessWidget{
  //2
  final _nameController = TextEditingController();
  final _userController = TextEditingController();
  final _passController = TextEditingController();

  //3
  @override
  Widget build(BuildContext context) {

    //3a
    final logo = CircleAvatar(
      backgroundColor: Colors.transparent,
      radius: bigRadius,
      child: appLogo,

    );//Circle
    //3b - Nombre
    final name = TextFormField(
    controller: _nameController,
    keyboardType: TextInputType.text,
    maxLength: 20,
    maxLines: 1,
    autofocus: true,

    decoration: InputDecoration(
    hintText: nameHint,
    contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
    border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(32.0),
    ),//border
    hintStyle: TextStyle(
    color: Colors.white
    )//TextStyle
    ),//InputDecoration
    );//TextFormField

    //3b - Usuario
    final user = TextFormField(
      controller: _userController,
      keyboardType: TextInputType.text,
      maxLength: 10,
      maxLines: 1,
      autofocus: true,

      decoration: InputDecoration(
          hintText: userHint,
          contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(32.0),
          ),//border
          hintStyle: TextStyle(
              color: Colors.white
          )//TextStyle
      ),//InputDecoration
    );//TextFormField

    //3b - Contraseña
    final pass = TextFormField(
      controller: _passController,
      keyboardType: TextInputType.text,
      maxLength: 12,
      maxLines: 1,
      autofocus: true,

      decoration: InputDecoration(
          hintText: passHint,
          contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(32.0),
          ),//border
          hintStyle: TextStyle(
              color: Colors.white
          )//TextStyle
      ),//InputDecoration
    );//TextFormField

    //3c
    final signupButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),//RoundRectangleBorder
        onPressed: () {},
        padding: EdgeInsets.all(12),
        color: appGreyColor,
        child: Text(loginButtonText, style: TextStyle(color: Colors.white)),
      ),//RaisedButton
    );//Padding

    //3d Scaffold
    return Scaffold(
      backgroundColor: appBackColor,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24.0, right: 24.0),
          children: <Widget>[
            logo,
            SizedBox(height: bigRadius),
            name,
            SizedBox(height: bigRadius),
            user,
            SizedBox(height: bigRadius),
            pass,
            SizedBox(height: buttonHeight),
            signupButton,
          ], //Widget Child
        ), //ListView
      ), //Center
    ); //Scafold

  }// Widget build

}//Fin Clase

