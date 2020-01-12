import 'package:http/http.dart' as http;
class Values{
  Map<String, dynamic> Feedback=[] as Map<String,dynamic >;
  
  Values(){
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