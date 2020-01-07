import 'package:flutter/material.dart';
class MyBullet extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final _height=  MediaQuery.of(context).size.height;
    final _width= MediaQuery.of(context).size.height;
    return new Container(
      height: _height*0.025,
      width: _width*0.025,
      decoration: new BoxDecoration(
        color: Colors.indigo,
        shape: BoxShape.circle,

      ),
    );
  }
}