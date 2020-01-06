import 'package:flutter/material.dart';
class Button extends StatelessWidget {
  Button({@required this.onPressed});
  Function onPressed;

  @override
  Widget build(BuildContext context) {
    return RaisedButton(child: Text("Next"),
      onPressed: onPressed,
      color: Colors.blue[500],
      textColor: Colors.white,
      padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
      splashColor: Colors.grey,
    );
  }
}