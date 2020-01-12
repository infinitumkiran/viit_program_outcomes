import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:scoped_model/scoped_model.dart';
class Values extends Model{
String rollNO='Select your registration id';
List<int>feedbackValues=[];
  setrollno(String id){
    rollNO=id;
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
   void setdata()
  {
    
    http
        .put('https://viit-po-pso-feedback.firebaseio.com/RollNo/rollNO.json',
            body: json.encode(Feedback))
        .then((http.Response response) {
      // print('i should be executed before am i waiting');
    }).catchError((error) {
      print('There is an error');
      return false;
    });
  } 

}