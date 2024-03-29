import 'dart:convert';
import 'package:viitproject/widgets/values.dart';
import 'package:flutter/material.dart';
import 'package:viitproject/widgets/appbar.dart';
import 'package:viitproject/widgets/Button.dart';
import 'package:http/http.dart' as http;
import 'package:auto_size_text/auto_size_text.dart';

Map<String, dynamic> responseData = {};

//List<String>[
//var //json=JsonDecoder()

class PageOne extends StatefulWidget {
  @override
  _PageOneState createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  static String selectedrollno;
  
 static var entry;
  List<String> regNumbers = [];
  String get selectedRollNumber {
    return selectedrollno;
  }

  Future getdata() async{
    print("Test");
   await http
        .get(
            'https://viit-po-pso-feedback.firebaseio.com/Feedback/$selectedrollno.json')
        .then((http.Response response) {
      _PageOneState.entry = jsonDecode(response.body);
      
       restrict=jsonDecode(response.body);
      return true;
    }).catchError((error) {
      print('There is an error');
      return false;
    });
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
              hint: AutoSizeText(
                'Select a registration number',
                style:
                    TextStyle(fontWeight: FontWeight.w500, color: Colors.black),
                maxLines: 1,
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
                  child: new AutoSizeText(
                    value,
                    maxLines: 1,
                  ),
                );
              }).toList(),
            ),
          );
        else {
          return Center(
              child: CircularProgressIndicator(
            valueColor: new AlwaysStoppedAnimation<Color>(Color(0xff673AB7)),
          ));
        }
      },
    );
  }

  Widget build(BuildContext context) {
    final _height = MediaQuery.of(context).size.height;
    final _width = MediaQuery.of(context).size.height;
    
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
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Container(
                        child: AutoSizeText(
                          'Choose Your Registration Number',
                          maxLines: 1,
                          style: TextStyle(
                            fontSize: 19.0,
                            color: Colors.black,
                            fontFamily: 'poppins',
                          ),
                        ),
                      ),
                    ),
                    Divider(
                      height: 8,
                      thickness: 2,
                      color: Color(0xff673AB7),
                    ),
                    Flexible(
                      child: Center(
                        child: Container(
                          // margin: EdgeInsets.symmetric(horizontal: 40.0),
                          width: 240.0,
                          height: 40.0,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(4.0),
                              border: Border.all(color: Color(0xff673AB7))),
                          child: dropdownButton(),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Spacer(
                          flex: 2,
                        ),
                        Flexible(
                          child: Button(
                            title: 'Next',
                            onPressed: () {
                             getdata();

                              rollNO = selectedrollno;
                          
                              if ((rollNO != null)&&(_PageOneState.entry ==  null)) {
                                Navigator.pushReplacementNamed(
                                    context, '/second');
                              }
                            },
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
