import 'package:flutter/material.dart';
import 'package:project/Screens/AssessmentScreen.dart';
import 'package:project/Screens/ExpertsScreen.dart';
import 'package:project/Screens/ProblemScreen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
      child: ListView(
        children: const [
          Padding(
            padding: EdgeInsets.all(30),
            child: CircleAvatar(
              backgroundColor: Colors.purpleAccent,
              radius: 70,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          ListTile(
            title: Center(
              child: Text(
                'Vaidehi Kharde',
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
            ),
          ),
          ListTile(
            title: Center(
              child: Text(
                'Vaidehi Kharde',
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
            ),
          ),
        ],
      ),
    ),
      appBar: AppBar(
        title: const Center(child: Text('Pure Peace', style: TextStyle(color: Colors.blue, fontSize: 30))),
      ),
      body:
        SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 30),
                child: Container(
                  height: 200,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                      itemCount: 3,
                      itemBuilder: (context, index){
                        if (index == 1){
                          return Padding(
                            padding: const EdgeInsets.all(20),
                            child: Container(
                              height: 100,
                              width: 300,
                              decoration: BoxDecoration(
                                color: Colors.blue.shade100
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    child: IconButton(onPressed: ()
                                        {
                                          Navigator.push(context,
                                          MaterialPageRoute(builder: (context) => ProblemScreen()));
                                        },
                                        icon: const Icon(
                                          Icons.add_card,
                                          size: 100,
                                        ),
                                    ),
                                  ),
                                  const Text('Know your mood'),
                                ],
                              )
                            ),
                          );
                        }
                        else if (index == 2){
                          return Padding(
                            padding: const EdgeInsets.all(20),
                            child: Container(
                              height: 100,
                              width: 300,
                                decoration: BoxDecoration(
                                    color: Colors.blue.shade100
                                ),
                                child: Column(
                                  children: [
                                    Container(
                                      child: IconButton(onPressed: ()
                                      {
                                        Navigator.push(context,
                                            MaterialPageRoute(builder: (context) => ExpertsPage()));
                                      },
                                        icon: const Icon(
                                          Icons.add_card,
                                          size: 100,
                                        ),
                                      ),
                                    ),
                                    Text('Talk to expert'),
                                  ],
                                )
                            ),
                          );
                        }
                        else {
                          return Padding(
                            padding: const EdgeInsets.all(20),
                            child: Container(
                              height: 100,
                              width: 300,
                                decoration: BoxDecoration(
                                    color: Colors.blue.shade100
                                ),
                                child: Column(
                                  children: [
                                    Container(
                                      child: IconButton(onPressed: ()
                                      {
                                        Navigator.push(context,
                                            MaterialPageRoute(builder: (context) => AssessmentPage()));
                                      },
                                        icon: const Icon(
                                          Icons.add_card,
                                          size: 100,
                                        ),
                                      ),
                                    ),
                                    Text('Take assessment'),
                                  ],
                                )
                            ),
                          );
                        }
                      }
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: SizedBox(
                  height: 300,
                  child: SingleChildScrollView(
                    child: Card(
                      child: Text('Mental health is a huge issue in the United States and there are shocking statistics to prove it. When we consider the fact that the Centers for Disease Control and Prevention (CDC) estimates that 1 in 5 adults experience at least one mental health condition every year, it’s hard to deny that we need to be making mental health awareness and mental health care more of a priority.Unfortunately, there also tends to be a significant stigma attached to anything related to mental health or a person’s mental well being, which is why it’s so essential that we acknowledge good mental health efforts and work to overcome the barriers that have been put up that keep us from addressing mental health in a positive, productive way. You should regularly grant yourself the permission to tune in to yourself and consider your overall mental health so you can best address your mental health care needs.Mental health awareness might be one of the most pressing issues we’re currently facing in the healthcare industry as a whole, which is why there’s a national movement to celebrate the importance of mental health every May: Mental Health Awareness Month. Fighting the stigma, providing support and resources to struggling individuals and their loved ones, and advocating for policy changes are all integral parts of mental health awareness month.',
                        maxLines: 50,
                        style: TextStyle( fontSize: 15),
                      ),
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                    child: CircleAvatar(
                        backgroundImage: AssetImage('Image/logo.png'),
                        radius: 50,
                    ),
                  ),
                  Center(child: Text ('Bisma Anwar', style: TextStyle(fontSize: 30),))
                ],
              )
            ],
          ),
        )
    );
  }
}
