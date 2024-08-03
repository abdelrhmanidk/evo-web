import 'package:flutter/material.dart';

class FlutterRoadmap extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Top Section
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(20),
              color: Color(0xFF0A0A45),
              child: Column(
                children: [
                  Text(
                    'Flutter',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            // Middle Section
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Key Topics',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 10),
                  _buildKeyTopic('Dart'),
                  _buildKeyTopic('Flutter'),
                  _buildKeyTopic('Firebase'),
                  // Add more key topics as needed...
                ],
              ),
            ),
            // Bottom Section
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Additional Topics',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 10),
                  _buildAdditionalTopic('State Management'),
                  _buildAdditionalTopic('Animations'),
                  // Add more additional topics as needed...
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildKeyTopic(String topic) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        children: [
          Icon(Icons.check_circle, color: Colors.green),
          SizedBox(width: 10),
          Text(
            topic,
            style: TextStyle(fontSize: 18),
          ),
        ],
      ),
    );
  }

  Widget _buildAdditionalTopic(String topic) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        children: [
          Icon(Icons.arrow_right, color: Colors.blue),
          SizedBox(width: 10),
          Text(
            topic,
            style: TextStyle(fontSize: 18),
          ),
        ],
      ),
    );
  }
}
