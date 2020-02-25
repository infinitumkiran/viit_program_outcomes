import 'dart:js';

import 'package:flutter/material.dart';
import 'package:viitproject/slide1.dart';
import 'package:viitproject/slide2.dart';
import 'package:viitproject/slide3.dart';
import 'package:viitproject/slide4.dart';
import 'package:viitproject/slide5.dart';
import 'package:viitproject/widgets/submission_alert.dart';
import 'package:viitproject/welcome.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'VIITFEEDBACKFORM',
    theme: ThemeData(
      primaryColor: Color(0xff3949AB),
      accentColor: Color(0xff673AB7),
     
    ),
    routes: {
      // When navigating to the "/" route, build the FirstScreen widget.
      '/': (context) => WelcomePage(),
      '/one': (context) => PageOne(),
      '/second': (context) => PageTwo(),
      '/third': (context) => PageThree(),
      '/fourth': (context) => PageFour(),
      '/fifth': (context) => PageFive(),
      '/sixth': (context) => SubmissionAlert('Succesfully Submitted'),
    },
  ));
}
