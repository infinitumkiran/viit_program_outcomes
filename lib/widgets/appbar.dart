import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
AppBar buildAppBar(){
  return AppBar(

    backgroundColor: Color(0xff3949AB),
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
        AutoSizeText('Department of Computer Science and Engineering',
        maxLines: 1,)
      ],
    ),
  );
}