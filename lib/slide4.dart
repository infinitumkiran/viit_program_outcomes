import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:viitproject/widgets/appbar.dart';
import 'package:viitproject/widgets/Button.dart';
import 'PO/po.dart';
import 'package:viitproject/widgets/Bullet.dart';

class PageFour extends StatefulWidget {
  @override
  _PageFourState createState() => _PageFourState();
}

class _PageFourState extends State<PageFour>{


  int rating=0;
  List<double> sliderValues = [0, 0, 0, 0, 0, 0];


  final List<PO> tripsList = [
    PO("Understand the impact of Computer Science and Engineering solutions on society & eco-friendly environment and the need for sustainable development.(Environment and sustainability)"),
    PO("Follow Professional ethics and commit to responsibilities & norms of the engineering practices. (Ethics)"),
    PO("Contribute effectively as an individual, member or leader of intra and inter-disciplinary teams/working environment.(Individual and team work)"),
    PO("Communicate effectively both in verbal and written forms with engineers/technocrats in particular and with society at large and give/receive clear instructions. (Communication)"),
    PO("Apply the principles of engineering and management as a member or leader to manage projects in multidisciplinary environment. (Project management and finance)"),
    PO("Recognize the necessity and pursue independent & life-long learning to keep abreast of technological changes. (Life-long learning)."),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar:buildAppBar(),
      body:
      Container(
        color: Color(0xffE5E5E5),
//      child: Column(
        child: ListView(
          children: <Widget>[
            Container(

              padding:  EdgeInsets.fromLTRB(0,10,0,0),
              child: Center(

                  child: Text("0 - POOR | 1 - AVERAGE | 2 - GOOD | 3 - EXCELLENT",
                    style: TextStyle(color: Colors.indigo, fontSize: 22.0,fontWeight:FontWeight.bold),)),
            ),
            SizedBox(height:30.0),
            Card(
              margin:EdgeInsets.symmetric(horizontal: 30) ,
              color: Colors.white,

              child: Container(
                  width: 1400.0,
                  height: 600.0,
                  child: Column(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.fromLTRB(0,10,0,0),
                          child:Text('PROGRAM OUTCOMES',style: TextStyle(fontSize: 30,color: Colors.indigo)),
                        ),
                        Expanded(
                          child: new ListView.builder(
                              itemCount: tripsList.length,
                              itemBuilder: (BuildContext context, int index) =>
                                  buildPO(context, index)),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Button(title:'Next',onPressed:() {
                                // Navigate to the second screen using a named route.
                                Navigator.pushReplacementNamed(context, '/fifth');},),
                            ),
                          ],
                        ),


                      ]
                  )
              ),

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
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: <Widget>[
              Container
                (
                  child:new MyBullet()
              ),
              Container(
                child: Text('   '),
              ),
              Expanded(

                child:
                Text(
                  trip.title,
                  style: new TextStyle(fontSize: 20.0),
                  maxLines: 3,
                ),

                //Spacer(),

              ),

              Slider(
                min: 0.0,
                max: 3.0,
                divisions: 3,
                value: sliderValues[index].toDouble(),
                activeColor: Colors.indigo,
                inactiveColor: Colors.blueGrey,
                label: sliderValues[index].toString(),
                onChanged: (newValue) {
                  setState(() {
                    sliderValues[index] = newValue.toDouble();

                  });
                },
              ),
              Container(child:
              Text("${sliderValues[index]}",
                style: TextStyle(color: Colors.black, fontSize: 22.0,fontWeight:FontWeight.bold),)),






            ],
          ),
        ),
      ),
    );
  }

}
