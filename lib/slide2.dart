import 'package:flutter/material.dart';
import 'package:viitproject/widgets/values.dart';
import 'package:viitproject/widgets/Button.dart';
import 'package:viitproject/widgets/appbar.dart';
import 'package:viitproject/slide1.dart';
class PageTwo extends StatefulWidget {
  final Values model;
  PageTwo(this.model);
  @override
  _PageTwoState createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
  Values obj;
  
  @override
  Widget build(BuildContext context) {
    final _height=  MediaQuery.of(context).size.height;
    final _width= MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: buildAppBar(),
        body: Center(
          child: Container(
            height: 0.5*_height,
            width: 0.5*_width,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.indigo[300],
                width: 2,
              ),
              borderRadius: BorderRadius.circular(25),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.fromLTRB(10.0, 40.0, 0.0,0.0),

                  child: Text('Your Registration Number',
                    style: TextStyle(fontSize: 20.0,
                        decoration: TextDecoration.underline,
                        color:Colors.indigo ),),
                ),
                Text(
                  widget.model.rollNO,
                  style: TextStyle(
                      fontSize: 20.0
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(30.0),
                  child:Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Button(title:'Back',onPressed:() {
                        // Navigate to the second screen using a named route.
                        Navigator.pushReplacementNamed(context, '/');
                      }
                        ,),
                      SizedBox(
                        width: 100.0,
                      ),
                      Button(title:'Next',onPressed:() {
                        Navigator.pushReplacementNamed(context, '/third');
                      }
                        ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        )
    );
  }
}