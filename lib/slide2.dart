import 'package:flutter/material.dart';
import 'package:viitproject/slide1.dart';
import 'package:viitproject/widgets/appbar.dart';

class PageTwo extends StatefulWidget
{
  @override
  _PageTwoState createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {


  var sliderValue = 0.0;
  var sliderValue1 = 0.0;
  var sliderValue2 = 0.0;
  var sliderValue3= 0.0;
  var sliderValue4 = 0.0;
  var sliderValue5 = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Container(
        color: Color(0xffE5E5E5),
        child: Column(
          children: <Widget>[
            Container(

              padding:  EdgeInsets.fromLTRB(0,10,0,0),
              child: Container(
                  child: Text("0 - POOR | 1 - AVERAGE | 2 - GOOD | 3 - EXCELLENT",
                    style: TextStyle(color: Colors.indigo, fontSize: 22.0,fontWeight:FontWeight.bold),)),
            ),
            SizedBox(height:30.0),
            Container(
              child: Align(
                child: Material(
                  color: Colors.white,
                  elevation: 14.0,
                  borderRadius: BorderRadius.circular(24.0),
                  shadowColor: Color(0x802196F3),
                  child: Container(
                      width: 1400.0,
                      height: 600.0,
                      child: Column(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.fromLTRB(0,10,0,0),
                            child:Text('PROGRAM OUTCOMES',style: TextStyle(fontSize: 30,color: Colors.indigo)),
                          ),
                          Row(
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.all(10),
                                child: Text('     Apply knowledge of Mathematics, Science, Computer Science and Engineering to solve'
                                    '\n     the real-world problems of core and allied engineering disciplines. (Engineering knowledge)',style: TextStyle(fontSize: 23),),
                              ),
                              Container(
                                padding: EdgeInsets.fromLTRB(20, 10, 0, 0),
                                child: Slider(
                                  min: 0.0,
                                  max: 3.0,
                                  divisions: 3,
                                  value: sliderValue,
                                  activeColor: Colors.blue,
                                  inactiveColor: Colors.blueGrey,
                                  onChanged: (newValue) {
                                    setState(() {
                                      sliderValue = newValue;


                                    });
                                  },
                                ),),
                              Padding(
                                padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                                child: Container(child: Text("$sliderValue",
                                  style: TextStyle(color: Colors.black, fontSize: 22.0,fontWeight:FontWeight.bold),)),
                              ),
                            ],
                          ),

                          Row(
                            children: <Widget>[
                              Container(
                                child: Text('       Identify, formulate, survey literature and analyze Computer Science and Engineering problems and'
                                    ' \n       arrive at suitable conclusions. (Problem analysis)',style: TextStyle(fontSize: 23),),
                              ),
                              Container(
                                padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                                child: Slider(
                                  min: 0.0,
                                  max: 3.0,
                                  divisions: 3,
                                  value: sliderValue1,
                                  activeColor: Colors.blue,
                                  inactiveColor: Colors.blueGrey,
                                  onChanged: (newValue) {
                                    setState(() {
                                      sliderValue1 = newValue;


                                    });
                                  },
                                ),),
                              Padding(
                                padding:EdgeInsets.fromLTRB(0, 0, 0, 0),
                                child: Container(child: Text("$sliderValue1",
                                  style: TextStyle(color: Colors.black, fontSize: 22.0,fontWeight:FontWeight.bold),)),
                              ),
                            ],
                          ),

                          Row(
                            children: <Widget>[
                              Container(
                                child: Text('       Design / Develop solutions for Computer Science & Engineering problems with due consideration for public '
                                    '\n       health & safety, cultural, societal and environmental concerns. (Design/development of solutions)',style: TextStyle(fontSize: 23),),
                              ),
                              Container(
                                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                child: Slider(
                                  min: 0.0,
                                  max: 3.0,
                                  divisions: 3,
                                  value: sliderValue2,
                                  activeColor: Colors.blue,
                                  inactiveColor: Colors.blueGrey,
                                  onChanged: (newValue) {
                                    setState(() {
                                      sliderValue2 = newValue;


                                    });
                                  },
                                ),),
                              Padding(
                                padding:EdgeInsets.fromLTRB(0, 0, 0, 0),
                                child: Container(child: Text("$sliderValue2",
                                  style: TextStyle(color: Colors.black, fontSize: 22.0,fontWeight:FontWeight.bold),)),
                              ),
                            ],
                          ),

                          Row(
                            children: <Widget>[
                              Container(
                                child: Text('       Conduct investigations on complex Computer Science & Engineering problems using various research'
                                    '\n       methods including design of experiments, analysis and interpretation of data and synthesis of '
                                    '\n       information to arrive at valid conclusions. (Conduct investigations of complex problems)',style: TextStyle(fontSize: 23),),
                              ),
                              Container(
                                padding: EdgeInsets.fromLTRB(0, 1, 0, 0),
                                child: Slider(
                                  min: 0.0,
                                  max: 3.0,
                                  divisions: 3,
                                  value: sliderValue3,
                                  activeColor: Colors.blue,
                                  inactiveColor: Colors.blueGrey,
                                  onChanged: (newValue) {
                                    setState(() {
                                      sliderValue3 = newValue;


                                    });
                                  },
                                ),),
                              Padding(
                                padding:EdgeInsets.fromLTRB(0, 0, 0, 0),
                                child: Container(child: Text("$sliderValue3",
                                  style: TextStyle(color: Colors.black, fontSize: 22.0,fontWeight:FontWeight.bold),)),
                              ),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Container(
                                child: Text('       Use appropriate techniques, resources,  modern engineering and CSE tools to model and simulate'
                                    '\n       complex Computer Science and Engineering  systems with an understanding of  their'
                                    '\n       limitations .(Modern tool usage).',style: TextStyle(fontSize: 23),),
                              ),
                              Container(
                                padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                                child: Slider(
                                  min: 0.0,
                                  max: 3.0,
                                  divisions: 3,
                                  value: sliderValue4,
                                  activeColor: Colors.blue,
                                  inactiveColor: Colors.blueGrey,
                                  onChanged: (newValue) {
                                    setState(() {
                                      sliderValue4 = newValue;


                                    });
                                  },
                                ),),
                              Padding(
                                padding:EdgeInsets.fromLTRB(0, 0, 0, 0),
                                child: Container(child: Text("$sliderValue4",
                                  style: TextStyle(color: Colors.black, fontSize: 22.0,fontWeight:FontWeight.bold),)),
                              ),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Container(
                                child: Text('       Assess societal, health, safety, legal and cultural issues and the consequent responsibilities'
                                    '\n       relevant to Computer Science and Engineering practices. ( The engineer and society)',style: TextStyle(fontSize: 23),),
                              ),
                              Container(
                                padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                                child: Slider(
                                  min: 0.0,
                                  max: 3.0,
                                  divisions: 3,
                                  value: sliderValue5,
                                  activeColor: Colors.blue,
                                  inactiveColor: Colors.blueGrey,
                                  onChanged: (newValue) {
                                    setState(() {
                                      sliderValue5 = newValue;


                                    });
                                  },
                                ),),
                              Padding(
                                padding:EdgeInsets.fromLTRB(0, 0, 0, 0),
                                child: Container(child: Text("$sliderValue5",
                                  style: TextStyle(color: Colors.black, fontSize: 22.0,fontWeight:FontWeight.bold),)),
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(1100, 0, 0, 0),
                            child: Container(child: Align(
                              alignment: Alignment.bottomCenter,
                              child: RaisedButton(child: Text("Next"),
                                onPressed: () {
                                  // Navigate to the second screen using a named route.
                                  Navigator.pushReplacementNamed(context, '/third');
                                },
                                color: Colors.blue[500],
                                textColor: Colors.white,
                                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                                splashColor: Colors.grey,
                              ),
                            )),
                          ),
                        ],)
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );

  }
}