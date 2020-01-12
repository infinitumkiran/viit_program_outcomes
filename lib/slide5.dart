import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:viitproject/slide1.dart';
import 'package:viitproject/widgets/appbar.dart';
import 'package:viitproject/widgets/Button.dart';
import 'PO/po.dart';
import 'package:viitproject/widgets/Bullet.dart';
import 'package:viitproject/widgets/values.dart';
import 'package:http/http.dart' as http;
class PageFive extends StatefulWidget {
  @override
  _PageFiveState createState() => _PageFiveState();
}

class _PageFiveState extends State<PageFive>{
  
  
  PageOne selectedrollno;
  List<double> sliderValues = [0, 0];
  
   void setdata()
  {
    
    feedbackValues[12]=sliderValues[0] as int;
    feedbackValues[13]=sliderValues[1] as int;
    http
        .put('https://viit-po-pso-feedback.firebaseio.com/RollNo/$rollNO.json',
            body: json.encode(Feedback1))
        .then((http.Response response) {
          print(jsonEncode(Feedback1));
      // print('i should be executed before am i waiting');
    }).catchError((error) {
      print('There is an error');
      return false;
    });
  } 

  final List<PO> tripsList = [
    PO("Ability to design and develop efficient software-based systems using core computer science and engineering principles, algorithms and problem-solving techniques"),
    PO("Ability to apply advanced technology concepts including mobile computing, cloud computing, network security and big data to provide innovative software solutions"),
  ];

  @override
  Widget build(BuildContext context) {
    final _height=  MediaQuery.of(context).size.height;
    final _width= MediaQuery.of(context).size.height;
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


              Container(

                  width: _width*1.85577937,
                  height: _height*0.795334015,

                  margin:EdgeInsets.symmetric(horizontal: 30) ,

                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.indigo[300],
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.white,
                  ),

                  child: Column(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.fromLTRB(0,10,0,0),
                          child:Text('PROGRAM SPECIFIC OUTCOMES',style: TextStyle(fontSize: 30,color: Colors.indigo,decoration: TextDecoration.underline,)),
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
                              padding: const EdgeInsets.all(16.0),
                              child: Button(title:'Next',onPressed:() {
                                setdata();
                                // Navigate to the second screen using a named route.
                               Navigator.pushReplacementNamed(context, '/sixth');
                              }
                            ),
                            ),
                          ],
                        ),


                      ]
                  )
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
                  style: new TextStyle(fontSize: 22.0),
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
class MyBullet extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final _height=  MediaQuery.of(context).size.height;
    final _width= MediaQuery.of(context).size.height;
    return new Container(
      height: _height*0.025,
      width: _width*0.025,
      decoration: new BoxDecoration(
        color: Colors.indigo,
        shape: BoxShape.circle,

      ),
    );
  }
}

