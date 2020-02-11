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
  static String selectedrollno;

  List<String> regNumbers = [];
  String get selectedRollNumber {
    return selectedrollno;
  }

  // String selectedNumber = PageOne.selectedNum;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  } // Option 2

  dropdownButton() {
    return FutureBuilder(
      future: http
          .get(
              'https://viit-po-pso-feedback.firebaseio.com/Details/RollNo.json')
          .then<bool>((http.Response response) {
        var rollJson = jsonDecode(response.body);
        print(response.body);

        regNumbers = List.from(rollJson);
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
              focusColor: Color(0xff673AB7),
              hint: Text(
                'Select a registration number',
                style:TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.black
                ),
              ), // Not necessary for Option 1
              value: selectedrollno,
              onChanged: (newValue) {
                setState(() {
                  selectedrollno = newValue;
                });
              },
              items: regNumbers.map<DropdownMenuItem<String>>((String value) {
                return new DropdownMenuItem<String>(
                  value: value,
                  child: new Text(value),
                );
              }).toList(),
            ),
          );
        else {

        }
      },
    );
  }

  Widget build(BuildContext context) {
    final _height = MediaQuery.of(context).size.height;
    final _width = MediaQuery.of(context).size.height;
    print(_height);
    print(_width);
    return Scaffold(
        appBar: buildAppBar(),
        body: Center(
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
              side: BorderSide(
                color: Color(0xff673AB7),
                width: 2,
              ),
            ),
            child: Container(
              height: 0.5 * _height,
              width: 0.5 * _width,
              // decoration: BoxDecoration(
              //   border: Border.all(
              //     color: Color(0xff673AB7),
              //     width: 2,
              //   ),
              //   borderRadius: BorderRadius.circular(12),
              // ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.fromLTRB(10.0, 40.0, 0.0, 0.0),
                    child: Text(
                      'Choose Your Registration Number',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.black,
                        fontFamily: 'poppins',
                      ),
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
                          borderRadius: BorderRadius.circular(4.0),
                          border: Border.all(color: Color(0xff673AB7))),
                      child: dropdownButton(),
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
                            rollNO = selectedrollno;
                            print(rollNO);
                            if (rollNO != null) {
                              Navigator.pushReplacementNamed(
                                  context, '/second');
                            }
                          },
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
