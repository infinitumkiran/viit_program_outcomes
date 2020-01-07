import 'package:flutter/material.dart';
import 'package:viitproject/widgets/appbar.dart';

import 'package:viitproject/widgets/Button.dart';



class PageOne extends StatefulWidget
{
  static String selectedNum='0';
  @override
  _PageOneState createState() => _PageOneState();

  String getIndex()
  {
    return selectedNum.toString();
  }
}

class _PageOneState extends State<PageOne> {
  List<Map> _regNumbers =[
    {"id": 0, "name": "18L31A05R0"},
    {"id": 1, "name": "18L31A05R1"},
    {"id": 2, "name": "18L31A05R2"},
    {"id": 3, "name": "18L31A05R3"},
    {"id": 4, "name": "18L31A05R4"},
    {"id": 5, "name": "18L31A05R5"},
    {"id": 6, "name": "18L31A05R6"},
    {"id": 7, "name": "18L31A05R7"},
    {"id": 8, "name": "18L31A05R8"},
    {"id": 9, "name": "18L31A05R9"},
    {"id": 10, "name": "18L31A05S0"},
    {"id": 11, "name": "18L31A05S1"},
    {"id": 12, "name": "18L31A05S2"},
    {"id": 13, "name": "18L31A05S3"}
  ];

  // String selectedNumber = PageOne.selectedNum;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    PageOne.selectedNum=null;
  }// Option 2
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

                  child: Text('Choose Your Registration Number',
                    style: TextStyle(fontSize: 20.0,
                        decoration: TextDecoration.underline,
                        color:Colors.indigo ),),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 40.0),
                    width: 240.0,
                    height: 40.0,
                    decoration: BoxDecoration(
                        color:Colors.white,
                        borderRadius: BorderRadius.circular(10.0),
                        border: Border.all(color: Colors.indigo)),
                    child: DropdownButton(
                      focusColor: Colors.blue,
                      hint: Text('Select a registration number'), // Not necessary for Option 1
                      value: PageOne.selectedNum,
                      onChanged: (newValue) {
                        setState(() {
                          PageOne.selectedNum = newValue;
                        });
                      },
                      items: _regNumbers.map((Map map) {
                        return new DropdownMenuItem<String>(
                          value: map["id"].toString(),
                          child: new Text(
                            map["name"],
                          ),
                        );
                      }).toList(),
                    ),

                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.all(30.0),
                      child:Button(title:'Next',onPressed:() {
                        // Navigate to the second screen using a named route.
                        if(PageOne.selectedNum!=null)
                          Navigator.pushReplacementNamed(context, '/second');
                      }
                        ,),
                    ),
                  ],
                )
              ],
            ),
          ),
        )
    );
  }

}