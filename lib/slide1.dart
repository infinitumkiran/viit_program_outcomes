import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:viitproject/widgets/appbar.dart';
import 'package:viitproject/widgets/Button.dart';
import 'slidetrail.dart';
import 'package:http/http.dart' as http;


Map<String, dynamic> responseData = {};


//List<String>[
//var //json=JsonDecoder()
String selectedrollno='';
String get selectedRollNumber {
  return selectedrollno;
}

List<String> get allRollNumbers {
  return List.from(_regNumbers);
  
}

 List<String> _regNumbers = [];
  
 Future<bool> fetchRollNumbers() {
      
     return http
         .get('https://viit-po-pso-feedback.firebaseio.com/RollNo.json')
         .then<bool>((http.Response response) {
       var rollJson = jsonDecode(response.body);
        print(response.body);
       _regNumbers = List.from(rollJson);
//       // print(_rollNumbers);

       return true ;
      
     }).catchError((error) {
       print('There is an error');
       return false; 
     });

   }

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
  Pro obj=new Pro();
  List<String> _regNumbers =[];

  // String selectedNumber = PageOne.selectedNum;
  @override
  void initState() {
    fetchRollNumbers();
    // TODO: implement initState
    super.initState();
    PageOne.selectedNum=null;
  }// Option 2
  _dropdownButton() {
    return FutureBuilder(
      future: http.get('https://viit-po-pso-feedback.firebaseio.com/RollNo.json'),
      builder: (context, snapshot){
        if(snapshot.connectionState==ConnectionState.done)
          return DropdownButtonHideUnderline(
                      child: DropdownButton(
                      focusColor: Colors.blue,
                      hint: Text('Select a registration number'), // Not necessary for Option 1
                      value: PageOne.selectedNum,
                      onChanged: (newValue) {
                        setState(() {

                          PageOne.selectedNum = newValue;
                        });
                      },
                      items: _regNumbers.map<DropdownMenuItem<String>>((String value) {
                        return new DropdownMenuItem<String>(

                          value: value,
                          child: new Text(value
                          ),
                        );
                      }).toList(),
                    ),
                    );
          else{
            return CircularProgressIndicator();
          }

      },
    );
  }
  Widget build(BuildContext context) {
    final _height=  MediaQuery.of(context).size.height;
    final _width= MediaQuery.of(context).size.height;
    print(_height);
    print(_width);
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
                    child: _dropdownButton(),

                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.all(30.0),
                      child:Button(title:'Next',onPressed:() {
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