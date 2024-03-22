import 'package:flutter/material.dart';
import 'package:project/Screens/ResultScreen.dart';

class AssessmentPage extends StatefulWidget {
  const AssessmentPage({super.key});

  @override
  State<AssessmentPage> createState() => _AssessmentPageState();
}

class _AssessmentPageState extends State<AssessmentPage> {
  @override
  List<double> values = [];
  double val = 20;
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Test Yourself'),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 50),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                  child: Column(
                    children: [
                      Align(
                        child: Text('Question 1', style: TextStyle(fontSize: 20),),
                        alignment: Alignment.bottomLeft,
                      ),
                      Slider(
                          value: val,
                          max: 100,
                          divisions: 5,
                          onChanged: (double val1) {
                            setState(() {
                              val = val1;
                              values.add(val1);
                            });
                          }
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                  child: Column(
                    children: [
                      Align(
                        child: Text('Question 1', style: TextStyle(fontSize: 20),),
                        alignment: Alignment.bottomLeft,
                      ),
                      Slider(
                          value: val,
                          max: 100,
                          divisions: 5,
                          onChanged: (double val1) {
                            setState(() {
                              val = val1;
                              values.add(val1);
                            });
                          }
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                  child: Column(
                    children: [
                      Align(
                          child: Text('Question 1', style: TextStyle(fontSize: 20),),
                          alignment: Alignment.bottomLeft,
                      ),
                      Slider(
                          value: val,
                          max: 100,
                          divisions: 5,
                          onChanged: (double val1) {
                            setState(() {
                              val = val1;
                              values.add(val1);
                            });
                          }
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                  child: Column(
                    children: [
                      Align(
                        child: Text('Question 1', style: TextStyle(fontSize: 20),),
                        alignment: Alignment.bottomLeft,
                      ),
                      Slider(
                          value: val,
                          max: 100,
                          divisions: 5,
                          onChanged: (double val1) {
                            setState(() {
                              val = val1;
                              values.add(val1);
                            });
                          }
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                  child: Column(
                    children: [
                      Align(
                        child: Text('Question 1', style: TextStyle(fontSize: 20),),
                        alignment: Alignment.bottomLeft,
                      ),
                      Slider(
                          value: val,
                          max: 100,
                          divisions: 5,
                          onChanged: (double val1) {
                            setState(() {
                              val = val1;
                              values.add(val1);
                            });
                          }
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                  child: Column(
                    children: [
                      Align(
                        child: Text('Question 1', style: TextStyle(fontSize: 20),),
                        alignment: Alignment.bottomLeft,
                      ),
                      Slider(
                          value: val,
                          max: 100,
                          divisions: 5,
                          onChanged: (double val1) {
                            setState(() {
                              val = val1;
                              values.add(val1);
                            });
                          }
                      ),
                    ],
                  ),
                ),
                ElevatedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ResultPage()));
                }
                , child: Text('Results'))
              ],
            ),
          ),
        ),
    );
  }
}
