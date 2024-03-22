import 'package:flutter/material.dart';

class ExpertsPage extends StatelessWidget {
  final List<String> experts = [
    'Expert 1', 'Expert 2', 'Expert 3', 'Expert 4',
    'Expert 5', 'Expert 6', 'Expert 7', 'Expert 8',
    'Expert 9', 'Expert 10', 'Expert 11', 'Expert 12',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Experts'),
      ),
      body: ListView.builder(
        itemCount: experts.length,
        itemBuilder: (context, index) {
          final start = index * 4;
          final end = (index + 1) * 4;

          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: experts.sublist(start, end).map((expert) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Container(
                      width: 120,
                      height: 120,
                      color: Colors.blue,
                      child: Center(
                        child: Text(
                          expert,
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
          );
        },
      ),
    );
  }
}
