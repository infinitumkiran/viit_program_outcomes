import 'package:flutter/material.dart';
AppBar buildAppBar(){
  return AppBar(

    backgroundColor: Colors.indigo,
    centerTitle: true,
    title: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Image(
          image: AssetImage('images/vignan_logo.png'),
          height: 40,
          width: 40,
          fit: BoxFit.contain,
        ),
        SizedBox(
          width: 10,
          height: 10,
        ),
        Text('PO/PSO VIIT FEEDBACK FORM',style: TextStyle(fontSize: 28.0),)
      ],
    ),
  );
}