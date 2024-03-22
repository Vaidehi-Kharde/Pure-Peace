import 'package:flutter/material.dart';
import 'package:project/Screens/OverthinkingScreen.dart';
import 'package:project/Screens/StressScreen.dart';

class ProblemScreen extends StatefulWidget {
  const ProblemScreen({Key? key}) : super(key: key);

  @override
  _ProblemScreenState createState() => _ProblemScreenState();
}

class _ProblemScreenState extends State<ProblemScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Check your mood'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => StressScreen()));
                },
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: InkWell(
                    child: Container(
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                      ),
                      child: Center(child: Text('Stress')),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => OverthinkingScreen()));
                },
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: InkWell(
                    child: Container(
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                      ),
                      child: Center(child: Text('Overthinking')),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {},
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: InkWell(
                    child: Container(
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                      ),
                      child: Center(child: Text('Anxiety')),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {},
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: InkWell(
                    child: Container(
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                      ),
                      child: Center(child: Text('Loneliness')),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {},
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: InkWell(
                    child: Container(
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                      ),
                      child: Center(child: Text('Family and Relationship')),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {},
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: InkWell(
                    child: Container(
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                      ),
                      child: Center(child: Text('Post Trauma')),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {},
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: InkWell(
                    child: Container(
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                      ),
                      child: Center(child: Text('Depression')),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
