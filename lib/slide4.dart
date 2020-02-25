import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:viitproject/widgets/appbar.dart';
import 'package:viitproject/widgets/Button.dart';
import 'PO/po.dart';
import 'package:viitproject/widgets/Bullet.dart';
import 'package:viitproject/widgets/values.dart';
import 'package:auto_size_text/auto_size_text.dart';

class PageFour extends StatefulWidget {
  @override
  _PageFourState createState() => _PageFourState();
}

class _PageFourState extends State<PageFour> {
  List<double> sliderValues = [0, 0, 0, 0, 0, 0];

  void setdata() {
    feedbackValues[6] = sliderValues[0] as int;
    feedbackValues[7] = sliderValues[1] as int;
    feedbackValues[8] = sliderValues[2] as int;
    feedbackValues[9] = sliderValues[3] as int;
    feedbackValues[10] = sliderValues[4] as int;
    feedbackValues[11] = sliderValues[5] as int;
  }

  final List<PO> tripsList = [
    PO("Are you able to Understand the impact of Computer Science and Engineering solutions on society & eco-friendly environment and the need for sustainable development.(Environment and sustainability)"),
    PO("Are you able to Follow Professional ethics and commit to responsibilities & norms of the engineering practices. (Ethics)"),
    PO("Are you able to Contribute effectively as an individual, member or leader of intra and inter-disciplinary teams/working environment.(Individual and team work)"),
    PO("Are you able to Communicate effectively both in verbal and written forms with engineers/technocrats in particular and with society at large and give/receive clear instructions. (Communication)"),
    PO("Are you able to Apply the principles of engineering and management as a member or leader to manage projects in multidisciplinary environment. (Project management and finance)"),
    PO("Are you able to Recognize the necessity and pursue independent & life-long learning to keep abreast of technological changes. (Life-long learning)."),
  ];

  @override
  Widget build(BuildContext context) {
    final _height = MediaQuery.of(context).size.height;
    final _width = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: buildAppBar(),
      body: Container(
        color: Color(0xffE5E5E5),
//      child: Column(
        child: ListView(
          children: <Widget>[
            Container(
              padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
              child: Center(
                  child: AutoSizeText(
                "0 - POOR | 1 - FAIR | 2 - GOOD | 3 - VERY GOOD",
                maxLines: 1,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 22.0,
                    fontFamily: 'poppins',
                    fontWeight: FontWeight.bold),
              )),
            ),
            SizedBox(height: _height * 0.0132555669),
            Center(
              child: Container(
                  width: _width * 1.85577937,
                  height: _height * 0.795334015,
                  margin: EdgeInsets.symmetric(horizontal:_width*0.0132555673),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color(0xff673AB7),
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.white,
                  ),
                  child: Column(children: <Widget>[
                    Container(
                      margin: EdgeInsets.fromLTRB(0,_width*0.0132555673, 0, 0),
                      child: AutoSizeText('PROGRAM OUTCOMES',
                      maxLines: 1,
                          style: TextStyle(
                            fontSize: 30,
                            color: Color(0xff673AB7),
                            fontFamily: 'poppins',
                            decoration: TextDecoration.underline,
                          )),
                    ),
                    Flexible(
                      child: new ListView.builder(
                          itemCount: tripsList.length,
                          itemBuilder: (BuildContext context, int index) =>
                              buildPO(context, index)),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Button(
                              title: 'Next',
                              onPressed: () {
                                setdata();
                                // Navigate to the second screen using a named route.
                                Navigator.pushReplacementNamed(context, '/fifth');
                              }),
                        ),
                      ],
                    ),
                  ])),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildPO(BuildContext context, int index) {
    final trip = tripsList[index];
    return new Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        child: Padding(
          padding: const EdgeInsets.all(6.0),
          child: Row(
            children: <Widget>[
              Container(child: new MyBullet()),
              Container(
                child: Text('   '),
              ),
              Flexible(
                child: Text(
                  trip.title,
                  style: new TextStyle(fontSize: 17.0),
                 
                ),

                //Spacer(),
              ),
              Slider(
                min: 0.0,
                max: 3.0,
                divisions: 3,
                value: sliderValues[index].toDouble(),
                activeColor: Color(0xff673AB7),
                inactiveColor: Colors.blueGrey,
                label: sliderValues[index].toString(),
                onChanged: (newValue) {
                  setState(() {
                    sliderValues[index] = newValue.toDouble();
                  });
                },
              ),
              Container(
                  child: AutoSizeText(
                "${sliderValues[index]}",
                maxLines: 1,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold),
              )),
            ],
          ),
        ),
      ),
    );
  }
}
