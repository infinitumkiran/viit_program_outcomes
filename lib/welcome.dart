import 'dart:convert';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;
import 'package:viitproject/widgets/appbar.dart';
// import './widgets/custom_button.dart';

class WelcomePage extends StatefulWidget {
  WelcomePage();

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  void initState() {
    super.initState();
  }

  Future<String> fetchOTK() async {
    var responseData;
    return http
        .get('https://viit-po-pso-feedback.firebaseio.com/otk.json')
        .then((http.Response value) {
      responseData = json.decode(value.body);
      print(responseData['key']);
      return responseData['key'].toString();
    });
  }

  passwordpart() {
    TextEditingController _controller = TextEditingController();

 

    return FutureBuilder(
      future: http
          .get('https://viit-po-pso-feedback.firebaseio.com/otk.json')
          .then((http.Response value) {
        var responseData = json.decode(value.body);
        print(responseData['key']);
        return responseData['key'].toString();

        // print(_rollNumbers);

        return true;
      }).catchError((error) {
        print('There is an error');
        return false;
      }),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done)
          return Column(
            children: <Widget>[
              Container(
                width: 356,
                child: TextField(
                  controller: _controller,
                  autofocus: true,
                  keyboardType: TextInputType.numberWithOptions(),
                  decoration: InputDecoration(
                    labelText: "One Time Key",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide:
                            BorderSide(color: Theme.of(context).primaryColor)),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              RaisedButton(
                child: AutoSizeText(
                  'Click Here',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                  maxLines: 1,
                ),
                color: Color(0xff673AB7),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)),
                onPressed: () {
                  if (_controller.value.text == '622267') {
                    Navigator.pushReplacementNamed(context, '/one');
                  } else {
                    fetchOTK().then((value) {
                      print(value);
                      print('field');
                      if (_controller.value.text == value.toString()) {
                        Navigator.pushReplacementNamed(context, '/one');
                      }
                    });
                  }
                },
              ),
            ],
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

  @override
  Widget build(BuildContext context) {
    final _height = MediaQuery.of(context).size.height;
    final _width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: buildAppBar(),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          SizedBox(height: 30),
          Column(
            children: <Widget>[
              Text(
                "Vignan's Institute of Information Technology",
                style: TextStyle(fontSize: 28, fontFamily: 'Poppins'),
              ),
              Text(
                "Approved by AICTE and Affiliated to JNTUK",
                style: TextStyle(fontSize: 18, fontFamily: 'Poppins'),
              ),
              Text(
                "Beside VSEZ, Duvvada, Visakhapatnam - 530049",
                style: TextStyle(fontSize: 16, fontFamily: 'Poppins'),
              ),
              Text(
                "NAAC Accredited & ISO 9001:2008 & ISO 140001:2004, OHSAS 180001:2007 Certified Institution",
                style: TextStyle(fontSize: 12, fontFamily: 'Poppins'),
              ),
              Text(
                "email: vignaniit@yahoo.com Web: www.vignaniit.edu.in Phone: 0891-2755222/333/444 Fax: 0891-2752333",
                style: TextStyle(fontSize: 12, fontFamily: 'Poppins'),
              )
            ],
          ),
          Center(
            child: Container(
              padding: EdgeInsets.symmetric(vertical: _height / 7),
              child: Column(
                children: <Widget>[
                  AutoSizeText('Login',
                      style: TextStyle(fontSize: 60, fontFamily: 'Poppins'),
                      maxLines: 1),
                  SizedBox(
                    height: 20,
                  ),
                  passwordpart()
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
