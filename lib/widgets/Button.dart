import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  Button({@required this.onPressed,this.title});
  Function onPressed;
  String title;
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
          color: Color(0xff673AB7),
          disabledColor: Colors.grey,
          splashColor: Colors.blueAccent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
            side: BorderSide(width: 2),
          ),
          child: Text(
            title,
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
          onPressed: onPressed,
        );
  }
}
