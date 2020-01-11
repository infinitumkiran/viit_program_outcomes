import 'package:flutter/material.dart';
import 'package:viitproject/widgets/submission_alert.dart';
import 'slide1.dart';
import 'slide2.dart';
import 'slide3.dart';
import 'slide4.dart';
import 'slide5.dart';
int x=1;
class Pro extends StatefulWidget{
  _ProState createState() => _ProState();
}
class _ProState extends State<Pro>{

  Widget PageContent()
  {
    Widget PageContent;
      if(x==0) {
        PageContent=SubmissionAlert as Widget;
      }
      if(x==1)
        PageContent=PageOne();
      if(x==2)
        PageContent=PageTwo();
      if(x==3)
        PageContent=PageThree();
      if(x==4)
        PageContent=PageFour();
      if(x==5)
        PageContent=PageFive();
    return PageContent;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child:PageContent(),
    );
  }

  }



