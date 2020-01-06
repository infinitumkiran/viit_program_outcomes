import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:viitproject/widgets/appbar.dart';
import 'package:viitproject/widgets/Button.dart';
import 'PO/po.dart';


class PageFive extends StatefulWidget {
  @override
  _PageFiveState createState() => _PageFiveState();
}

class _PageFiveState extends State<PageFive>{


  int rating=0;
  List<double> sliderValues = [0, 0, 0, 0, 0, 0];


  final List<PO> tripsList = [
    PO("Ability to design and develop efficient software-based systems using core computer science and engineering principles, algorithms and problem-solving techniques"),
    PO("Ability to apply advanced technology concepts including mobile computing, cloud computing, network security and big data to provide innovative software solutions"),
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
                          child:Text('PROGRAM SPECIFIC OUTCOMES',style: TextStyle(fontSize: 30,color: Colors.indigo)),
                        ),
                        Expanded(
                          child: new ListView.builder(
                              itemCount: tripsList.length,
                              itemBuilder: (BuildContext context, int index) =>
                                  buildPO(context, index)),
                        ),
                        Container(
                          child: Button(onPressed:() {
                            // Navigate to the second screen using a named route.
                            Navigator.pushReplacementNamed(context, '/sixth');},),
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



