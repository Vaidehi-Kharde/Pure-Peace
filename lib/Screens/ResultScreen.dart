import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class ResultPage extends StatefulWidget {
  const ResultPage({Key? key}) : super(key: key);

  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Way to a healthy mind'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text('Your Stress levels'),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 50),
              child: SizedBox(
                height: 200,
                child: SfRadialGauge(
                  axes: <RadialAxis>[
                    RadialAxis(
                      minimum: 0,
                      maximum: 100,
                      ranges: [
                        GaugeRange(
                            startValue: 0,
                            endValue: 100,
                            gradient: SweepGradient(
                                colors: <Color>[Colors.blue.shade50, Colors.blue.shade900]
                            )
                        ),
                      ],
                      pointers: <GaugePointer>[
                        MarkerPointer(
                          value: 30,
                          enableDragging: true,
                          markerWidth: 10,
                          markerHeight: 10,
                          markerOffset: -15,
                          color: Colors.indigo,
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        onTap: (){
                          // Navigator.push(context,
                          //     MaterialPageRoute(builder: (context) =>PermissionLetterScreen()));
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: const Color(0xff009697),
                              ),
                            ),
                            child: Center(
                              child: ClipRRect(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 30,
                                      child: IconButton(
                                        icon: Icon(Icons.home_filled),
                                        color: Colors.white,
                                        onPressed: () {},
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(top: 97),
                                      child: Text('Auditorium',
                                          style: TextStyle(
                                            // fontSize: height * 0.02,
                                              color: Colors.black)),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: (){
                          // Navigator.push(context,
                          //     MaterialPageRoute(builder: (context) =>PermissionLetterScreen()));
                        },
                        child: Container(
                          // height: height * 0.15,
                          // width: width * 0.4,
                          decoration: BoxDecoration(
                            //borderRadius: BorderRadius.circular(98),
                            border: Border.all(
                              color: Color(0xff009697),
                              // width: width * 0.006,
                            ),
                          ),
                          child: Center(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(98),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    height: 30,
                                    child: Icon(Icons.apartment,
                                        color: Colors.black,
                                        size: 98),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 98),
                                    child: Text('MAC',
                                        style: TextStyle(
                                          // fontSize: height * 0.02,
                                            color: Colors.black)),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Text('Recommended expers for you'),
            // Expanded(
            //   child: SingleChildScrollView(
            //     child: GridView.count(
            //       crossAxisCount: 2,
            //       children: List.generate(4, (index) {
            //         return Container(
            //           child: Text('Option $index'), // Replace this with your desired widget
            //         );
            //       }),
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
