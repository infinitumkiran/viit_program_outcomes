import 'dart:convert';
import 'package:viitproject/widgets/values.dart';
import 'package:flutter/material.dart';
import 'package:viitproject/widgets/appbar.dart';
import 'package:viitproject/widgets/Button.dart';
import 'package:http/http.dart' as http;

Map<String, dynamic> responseData = {};

//List<String>[
//var //json=JsonDecoder()



class PageOne extends StatefulWidget {
  
  @override
  _PageOneState createState() => _PageOneState();

}

class _PageOneState extends State<PageOne> {
  Values obj;
  
<<<<<<< HEAD
  String selectedrollno;
  
=======
  List<String> _regNumbers = [];
>>>>>>> parent of 74e9b6f... hi3
  String get selectedRollNumber {
  
  return obj.rollNO;
}


  // String selectedNumber = PageOne.selectedNum;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  } // Option 2

<<<<<<< HEAD
  
=======
  _dropdownButton() {
    return FutureBuilder(
      future: http
          .get('https://viit-po-pso-feedback.firebaseio.com/RollNo.json')
          .then<bool>((http.Response response) {
        var rollJson = jsonDecode(response.body);
        print(response.body);
        _regNumbers = List.from(rollJson);
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
              value: obj.rollNO,
              onChanged: (newValue) {
                setState(() {
                  obj.rollNO=newValue;

                });
              },
              items: _regNumbers.map<DropdownMenuItem<String>>((String value) {
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
>>>>>>> parent of 74e9b6f... hi3

  Widget build(BuildContext context) {
    final _height = MediaQuery.of(context).size.height;
    final _width = MediaQuery.of(context).size.height;
    print(_height);
    print(_width);
    return Scaffold(
        appBar: buildAppBar(),
        body: Center(
          child: Container(
            height: 0.5 * _height,
            width: 0.5 * _width,
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
                  margin: EdgeInsets.fromLTRB(10.0, 40.0, 0.0, 0.0),
                  child: Text(
                    'Choose Your Registration Number',
                    style: TextStyle(
                        fontSize: 20.0,
                        decoration: TextDecoration.underline,
                        color: Colors.indigo),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 40.0),
                    width: 240.0,
                    height: 40.0,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0),
                        border: Border.all(color: Colors.indigo)),
                    child: widget.model.dropdownButton(),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.all(30.0),
                      child: Button(
                        title: 'Next',
                        onPressed: () {
<<<<<<< HEAD
                          widget.model.setrollno(this.selectedrollno);
                          Navigator.pushReplacementNamed(context, '/second');
=======
                          
                          Navigator.pushReplacementNamed(context, '/third');
>>>>>>> parent of 74e9b6f... hi3
                        },
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
