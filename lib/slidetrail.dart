import 'flutter';
import 'package:flutter/material.dart';
import 'package:viitproject/widgets/appbar.dart';

import 'PO/po.dart';


class HomePo extends StatefulWidget{
  @override
  _HomePoState createState() => _HomePoState();
}

class _HomePoState extends State<HomePo>{


  int rating=0;
  List<double> sliderValues = [0, 0, 0, 0, 0, 0];


    final List<PO> tripsList = [
      PO("Apply knowledge of Mathematics, Science, Computer Science and Engineering to solve the real-world problems of core and allied engineering disciplines. (Engineering knowledge)"),
      PO("Identify, formulate, survey literature and analyze Computer Science and Engineering problems and arrive at suitable conclusions. (Problem analysis)"),
      PO("Program_outcome"),
      PO("Program_outcome"),
      PO("Program_outcome"),
      PO("Program_outcome"),

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
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.only(top: 8.0, bottom: 4.0),
                  child:
                    Text(
                      trip.title,
                      style: new TextStyle(fontSize: 30.0),
                      maxLines: 3,
                    ),

                    //Spacer(),

                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                  child: Row(
                    children: <Widget>[
                      Slider(
                        min: 0.0,
                        max: 3.0,
                        divisions: 3,
                        value: sliderValues[index].toDouble(),
                        activeColor: Colors.indigo,
                        inactiveColor: Colors.blueGrey,
                        label:sliderValues[index].toString(),
                        onChanged: (newValue) {
                          setState(() {
                            sliderValues[index] = newValue.toDouble();

                          });
                        },
                      ),

                      Padding(
                        padding:EdgeInsets.fromLTRB(0, 0, 0, 0),
                        child: Container(child:
                        Text("${sliderValues[index]}",
                          style: TextStyle(color: Colors.black, fontSize: 22.0,fontWeight:FontWeight.bold),)),
                      ),
                      Spacer(),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      );
    }

  }



