import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  Button({@required this.onPressed,this.title});
  Function onPressed;
  String title;
  @override
  Widget build(BuildContext context) {
    return RaisedButton(child: Text(title),
      onPressed: onPressed,
      color: Colors.indigo,
      textColor: Colors.white,
      padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
      splashColor: Colors.blueGrey
    );
  }
}