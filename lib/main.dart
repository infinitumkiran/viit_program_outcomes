
import 'package:flutter/material.dart';
import 'package:viitproject/slide1.dart';

import 'package:viitproject/slide3.dart';
import 'package:viitproject/slide4.dart';
import 'package:viitproject/slide5.dart';
import 'package:viitproject/widgets/submission_alert.dart';

void main() => runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'VIITFEEDBACKFORM',

      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => PageOne(),
        // When navigating to the "/second" route, build the SecondScreen widget.
       // '/second': (context) => PageTwo(),
        '/third': (context) => PageThree(),
        '/fourth': (context) => PageFour(),
        '/fifth': (context) => PageFive(),
        '/sixth': (context) => SubmissionAlert('Succesfully Submitted'),


      },
    )
);
