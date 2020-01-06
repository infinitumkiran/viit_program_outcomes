import 'package:flutter/material.dart';
import 'package:viitproject/slide1.dart';
import 'package:viitproject/widgets/appbar.dart';

class PageThree extends StatefulWidget
{
  @override
  _PageThreeState createState() => _PageThreeState();
}

class _PageThreeState extends State<PageThree> {


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
                    style: TextStyle(color: Colors.blue, fontSize: 22.0,fontWeight:FontWeight.bold),)),
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
                                child: Text('      Understand the impact of Computer Science and Engineering solutions on society & ecofriendly'
                                    '\n      environment and the need for sustainable development.(Environment and sustainability)',style: TextStyle(fontSize: 23),),
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
                                child: Text('        Follow Professional ethics and commit to responsibilities & norms of the engineering'
                                    '\n        practices. (Ethics)',style: TextStyle(fontSize: 23),),
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
                                child: Text('        Contribute effectively as an individual, member or leader of intra and inter-disciplinary'
                                    '\n        teams/working environment.(Individual and team work)',style: TextStyle(fontSize: 23),),
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
                                child: Text('        Communicate effectively both in verbal and written forms with engineers/technocrats in particular'
                                    '\n         and with society at large and give/receive clear instructions. (Communication)',style: TextStyle(fontSize: 23),),
                              ),
                              Container(
                                padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
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
                                child: Text('        Apply the principles of engineering and management as a member or leader to'
                                    '\n        manage projects in multidisciplinary environment. (Project management and finance)',style: TextStyle(fontSize: 23),),
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
                                child: Text('        Recognize the necessity and pursue independent & life-long learning to keep abreast'
                                    '\n        of technological changes. (Life-long learning).',style: TextStyle(fontSize: 23),),
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
                                  Navigator.pushReplacementNamed(context, '/fourth');
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