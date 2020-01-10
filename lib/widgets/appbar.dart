import 'package:flutter/material.dart';
AppBar buildAppBar(){
  return AppBar(

    backgroundColor: Colors.indigo[400],
    centerTitle: true,
    title: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Image(
          image: AssetImage('assets/vignan_logo.png'),
          height: 40,
          width: 40,
          fit: BoxFit.contain,
        ),
        SizedBox(
          width: 10,
          height: 10,
        ),
        Text('PO/PSO VIIT FEEDBACK FORM',style: TextStyle(fontSize: 30.0),),
        SizedBox(
         width: 50,
         height: 10,
        ),
        Text(
  'RollNO',
  textAlign: TextAlign.right,
  overflow: TextOverflow.ellipsis,
  style: TextStyle(fontWeight: FontWeight.bold),
)
      ],
    ),
  );
}