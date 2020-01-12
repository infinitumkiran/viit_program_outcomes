import 'package:flutter/material.dart';
import 'package:viitproject/slide1.dart';
import 'package:viitproject/slide2.dart';
import 'package:viitproject/slide3.dart';
import 'package:viitproject/slide4.dart';
import 'package:viitproject/slide5.dart';
import 'package:viitproject/widgets/submission_alert.dart';
import 'package:viitproject/widgets/values.dart';
void main(){
  Values model;
   runApp(

    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'VIITFEEDBACKFORM',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => PageOne(model),
        '/second': (context) => PageTwo(model),
       '/third': (context) => PageThree(model),
        '/fourth': (context) => PageFour(model),
        '/fifth': (context) => PageFive(model),
        '/sixth': (context) => SubmissionAlert('Succesfully Submitted'),


      },
      
    )
);
}