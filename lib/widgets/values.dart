<<<<<<< HEAD
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:scoped_model/scoped_model.dart';
class Values extends Model{
String rollNO;


List<String> regNumbers = [];
List<int>feedbackValues=[];
  setrollno(String id){
    rollNO=id;
  }
  dropdownButton() {
    return FutureBuilder(
      future: http
          .get('https://viit-po-pso-feedback.firebaseio.com/RollNo.json')
          .then<bool>((http.Response response) {
        var rollJson = jsonDecode(response.body);
        print(response.body);
      
       regNumbers= List.from(rollJson);
//       // print(_rollNumbers);

        return true;
      }).catchError((error) {
        print('There is an error');
        return false;
      }),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done)
          return DropdownButtonHideUnderline(
            child: DropdownButton(
              focusColor: Colors.blue,
              hint: Text(
                  'Select a registration number'), // Not necessary for Option 1
              value: rollNO,
              onChanged: (newValue) {
                rollNO=newValue;
              },
              items:regNumbers.map<DropdownMenuItem<String>>((String value) {
                return new DropdownMenuItem<String>(
                  value: value,
                  child: new Text(value),
                );
              }).toList(),
            ),
          );
        else {
          return CircularProgressIndicator();
        }
      },
    );
  }
  setfeedback1(List sliderValues)
  {
     
    feedbackValues[0]=sliderValues[0] as int;
    feedbackValues[1]=sliderValues[1] as int;
    feedbackValues[2]=sliderValues[2] as int;
    feedbackValues[3]=sliderValues[3] as int;
    feedbackValues[4]=sliderValues[4] as int;
    feedbackValues[5]=sliderValues[5] as int;
  }
  setfeedback2(List sliderValues){
      
    feedbackValues[6]=sliderValues[0] as int;
    feedbackValues[7]=sliderValues[1] as int;
    feedbackValues[8]=sliderValues[2] as int;
    feedbackValues[9]=sliderValues[3] as int;
    feedbackValues[10]=sliderValues[4] as int;
    feedbackValues[11]=sliderValues[5] as int;

  }
  setfeedback3(List sliderValues){
      
    feedbackValues[12]=sliderValues[0] as int;
    feedbackValues[13]=sliderValues[1] as int;
    

  }
  Map<String, dynamic> Feedback={};
=======
import 'package:http/http.dart' as http;
class Values{
  Map<String, dynamic> Feedback=[] as Map<String,dynamic >;
>>>>>>> parent of 74e9b6f... hi3
  Values(this.rollNO){
        Feedback = {
      'PO1': feedbackValues[0],
      'PO2': feedbackValues[1],
      'PO3': feedbackValues[2],
      'PO4': feedbackValues[3],
      'PO5': feedbackValues[4],
      'PO6': feedbackValues[5],
      'PO7': feedbackValues[6],
      'PO8': feedbackValues[7],
      'PO9': feedbackValues[8],
      'PO10': feedbackValues[9],
      'PO11': feedbackValues[10],
      'PO12': feedbackValues[11],
      'PSO1': feedbackValues[12],
      'PSO2':feedbackValues[13],
};
  }
  Map<String,dynamic> sendData()
  {return Feedback;}
String rollNO='';
List<int>feedbackValues=[];

}