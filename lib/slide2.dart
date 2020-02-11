import 'package:flutter/material.dart';
import 'package:viitproject/slide1.dart';
import 'package:viitproject/widgets/values.dart';
import 'package:viitproject/widgets/Button.dart';
import 'package:viitproject/widgets/appbar.dart';
import 'package:auto_size_text/auto_size_text.dart';

class PageTwo extends StatefulWidget {
  @override
  _PageTwoState createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
  PageOne selectedrollno;

  @override
  Widget build(BuildContext context) {
    final _height = MediaQuery.of(context).size.height;
    final _width = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: buildAppBar(),
        body: Center(
          child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
                side: BorderSide(
                  color: Color(0xff673AB7),
                  width: 2,
                ),
              ),
              child: Container(
                height: 0.5 * _height,
                width: 0.5 * _width,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.fromLTRB(10.0, 40.0, 0.0, 0.0),
                        child: AutoSizeText(
                          'Your Registration Number is',
                          maxLines: 1,
                          style: TextStyle(
                              fontSize: 20.0,
                              fontFamily: 'poppins',
                              color: Colors.black),
                        ),
                      ),
                      Divider(
                        height: 8,
                        thickness: 2,
                        color: Color(0xff673AB7),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 80, bottom: 50),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(4.0),
                              border: Border.all(color: Colors.purple)),
                          child: AutoSizeText(
                            rollNO,
                            maxLines: 1,
                            style: TextStyle(
                                fontSize: 20.0, fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(30.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Button(
                              title: 'Back',
                              onPressed: () {
                                // Navigate to the second screen using a named route.
                                Navigator.pushReplacementNamed(context, '/');
                              },
                            ),
                            SizedBox(
                              width: 100.0,
                            ),
                            Button(
                                title: 'Next',
                                onPressed: () {
                                  Navigator.pushReplacementNamed(
                                      context, '/third');
                                }),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )),
        ));
  }
}
