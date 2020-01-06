import 'package:flutter/material.dart';
import 'package:viitproject/widgets/appbar.dart';


class PageOne extends StatefulWidget
{
  @override
  _PageOneState createState() => _PageOneState();
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
    ]; // Option 2
  String _selectedNumber; // Option 2
  @override
  Widget build(BuildContext context) {
    final _height=  MediaQuery.of(context).size.height;
    final _width= MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: buildAppBar(),
            body:


              Container(


                margin: EdgeInsets.all(200.0),
                  child: SizedBox(

                    height: 300.0,
                    width: double.infinity,

                     child:Card(
                      color: Colors.yellow[100],
                       child: Column(
                          children: <Widget>[
                             Container(
                               margin: EdgeInsets.fromLTRB(10.0, 40.0, 0.0,0.0),

                                child: Text('Choose Your Registration Number',
                                  style: TextStyle(fontSize: 20.0),),


                        ),

                            Container(
                              margin: EdgeInsets.fromLTRB(0, 30,0,0),
                               width: 240.0,
                               height: 40.0,
                               decoration: BoxDecoration(
                               color:Colors.white,
                               borderRadius: BorderRadius.circular(10.0),
                               border: Border.all(color: Colors.blueGrey)),
                               child: DropdownButton(
                                 focusColor: Colors.blue,
                                 hint: Text('Select a registration number'), // Not necessary for Option 1
                               value: _selectedNumber,
                                   onChanged: (newValue) {
                               setState(() {
                                  _selectedNumber = newValue;
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
                    Container(

                      margin: EdgeInsets.fromLTRB(550, 100, 0, 0),
                      child:RaisedButton(child: Text("Next"),
                        onPressed: () {
                          // Navigate to the second screen using a named route.
                          Navigator.pushReplacementNamed(context, '/second');
                        },
                        color: Colors.blue[500],
                        textColor: Colors.white,
                        padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                        splashColor: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),

              ),
              ),

    );
  }

}