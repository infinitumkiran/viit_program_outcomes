import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:viitproject/widgets/appbar.dart';
import 'package:viitproject/widgets/Button.dart';
import 'PO/po.dart';
import 'package:viitproject/widgets/Bullet.dart';

class PageThree extends StatefulWidget {
  @override
  _PageThreeState createState() => _PageThreeState();
}

class _PageThreeState extends State<PageThree>{

  int rating=0;
  List<double> sliderValues = [0, 0, 0, 0, 0, 0];


  final List<PO> tripsList = [
    PO("Apply knowledge of Mathematics, Science, Computer Science and Engineering to solve the real-world problems of core and allied engineering disciplines. (Engineering knowledge)"),
    PO("Identify, formulate, survey literature and analyze Computer Science and Engineering problems and arrive at suitable conclusions. (Problem analysis)"),
    PO("Design / Develop solutions for Computer Science & Engineering problems with due consideration for public health & safety, cultural, societal and environmental concerns. (Design/development of solutions)"),
    PO("Conduct investigations on complex Computer Science & Engineering problems using various research methods including design of experiments, analysis and interpretation of data and synthesis of information to arrive at valid conclusions. (Conduct investigations of complex problems)"),
    PO("Use appropriate techniques, resources,  modern engineering and CSE tools to model and simulate complex Computer Science and Engineering  systems with an understanding of  their limitations .(Modern tool usage)."),
    PO("Assess societal, health, safety, legal and cultural issues and the consequent responsibilities relevant to Computer Science and Engineering practices. ( The engineer and society)"),
  ];

  @override
  Widget build(BuildContext context) {
    final _height=  MediaQuery.of(context).size.height;
    final _width= MediaQuery.of(context).size.height;
    return Scaffold(

      appBar:buildAppBar(),
      body:
      Container(
        color: Color(0xffE5E5E5),
//      child: Column(
        child: ListView(
          children: <Widget>[
            Container(

              padding:  EdgeInsets.fromLTRB(0,10,0,0),
              child: Center(

                  child: Text("0 - POOR | 1 - AVERAGE | 2 - GOOD | 3 - EXCELLENT",
                    style: TextStyle(color: Colors.indigo, fontSize: 22.0,fontWeight:FontWeight.bold),)),
            ),
            SizedBox(height:30.0),
            Card(
              margin:EdgeInsets.symmetric(horizontal: 30) ,
              color: Colors.white,

              child: Container(
                  width: 1400.0,
                  height: 600.0,
                  child: Column(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.fromLTRB(0,10,0,0),
                          child:Text('PROGRAM OUTCOMES',style: TextStyle(fontSize: 30,color: Colors.indigo)),
                        ),
                        Expanded(
                          child: new ListView.builder(
                              itemCount: tripsList.length,
                              itemBuilder: (BuildContext context, int index) =>
                                  buildPO(context, index)),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Button(title:'Next',onPressed:() {
                                // Navigate to the second screen using a named route.
                                Navigator.pushReplacementNamed(context, '/fourth');},),
                            ),
                          ],
                        ),


                      ]
                  )
              ),

            ),
          ],
        ),
      ),
    );
  }

  Widget buildPO(BuildContext context, int index) {

    final trip = tripsList[index];
    return new Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: <Widget>[
              Container
                (
                  child:new MyBullet()
              ),
              Container(
                child: Text('   '),
              ),
              Expanded(

                child:
                Text(

                  trip.title,
                  style: new TextStyle(fontSize: 20.0),
                  maxLines: 3,
                ),

                //Spacer(),

              ),

              Slider(
                min: 0.0,
                max: 3.0,
                divisions: 3,
                label: sliderValues[index].toString(),
                value: sliderValues[index].toDouble(),
                activeColor: Colors.indigo,
                inactiveColor: Colors.blueGrey,

                onChanged: (newValue) {
                  setState(() {
                    sliderValues[index] = newValue.toDouble();

                  });
                },
              ),
              Container(child:
              Text("${sliderValues[index]}",
                style: TextStyle(color: Colors.black, fontSize: 22.0,fontWeight:FontWeight.bold),)),

            ],
          ),
        ),
      ),
    );
  }

}
