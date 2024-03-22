import 'package:flutter/material.dart';

class StressScreen extends StatelessWidget {
  const StressScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dealing with stress?'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
              child: SizedBox(
                height: 300,
                child: Card(
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Stress is the body\'s natural response to demands or challenges. It can be triggered by various factors, including work pressure, relationships, financial difficulties, or major life changes. When we perceive a situation as threatening or demanding, our body activates its "fight or flight" response, releasing stress hormones like cortisol and adrenaline.\n\nWhile stress can sometimes be beneficial, motivating us to perform better or respond to danger, chronic or excessive stress can have detrimental effects on physical and mental health. It can lead to a range of symptoms, including headaches, muscle tension, anxiety, depression, sleep disturbances, and impaired cognitive function.\n\nManaging stress involves adopting healthy coping strategies such as exercise, relaxation techniques, time management, seeking social support, and maintaining a balanced lifestyle. It\'s essential to recognize signs of stress and take proactive steps to address its underlying causes to maintain overall well-being.',
                        maxLines: 25,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30),
              child: SizedBox(
                height: 100,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Container(
                        height: 100,
                        width: 300,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('Image/logo.png'),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            Text(
              'Recommended Experts',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            GridView.count(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              crossAxisCount: 2,
              children: List.generate(8, (index) {
                return Center(
                  child: Container(
                    width: 100,
                    height: 100,
                    color: Colors.blue,
                    child: Center(
                      child: Text(
                        'Expert $index',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
