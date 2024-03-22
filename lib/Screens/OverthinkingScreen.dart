import 'package:flutter/material.dart';

class OverthinkingScreen extends StatelessWidget {
  const OverthinkingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dealing with Overthinking?'),
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
                        'To address overthinking, it\'s essential to adopt various strategies that can help alleviate the burden of incessant rumination. One effective approach involves practicing mindfulness and meditation, which can assist in grounding yourself in the present moment and reducing the tendency to dwell on past events or future worries. Setting aside dedicated worry time can also be beneficial, allowing you to contain excessive thoughts within specific intervals and prevent them from consuming your entire day. Additionally, challenging negative thoughts by questioning their validity and seeking evidence to support or refute them can help break the cycle of overthinking. Engaging in activities that keep your mind occupied, such as hobbies or exercise, can provide a welcome distraction and prevent thoughts from spiraling out of control. Journaling can offer a constructive outlet for expressing and processing your thoughts and emotions, promoting clarity and insight into recurring patterns of overthinking. Practicing self-compassion is crucial, as it involves treating yourself with kindness and understanding rather than harsh self-criticism. Seeking support from trusted individuals or mental health professionals can offer invaluable perspective, validation, and guidance in managing overthinking. Additionally, limiting stimulants like caffeine and setting realistic expectations for yourself can contribute to a more balanced and grounded mindset. Ultimately, adopting a combination of these strategies can empower you to effectively manage overthinking and cultivate greater mental well-being.',
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
