import 'package:evo/widges/horiziontalpointswidget.dart';
import 'package:evo/widges/verticalline.dart';
import 'package:evo/widges/verticalpointsline.dart';
import 'package:flutter/material.dart';

class FlutterRoadmap extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal:MediaQuery.of(context).size.width<1200? 5:120),
        child: SingleChildScrollView(
           scrollDirection: Axis.horizontal,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Container(
              width: 1300,
              height: 2000, // Ensure the container is tall enough to scroll
              child: Stack(
                children: [
                  Positioned(
                    top: 0,
                    left: 0,
                    right: 0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        VerticalPointsWidget(
                          height: 100, // Adjust the height as needed
                          pointPositions: [for (var i = 20; i <= 90; i += 10) i.toDouble()], // Vertical positions of points
                        ),
                        Text('Flutter', style: TextStyle(fontSize: 30)),
                        VerticalLineWidget(height: 200),
                        _buildTitle('Dart'),
                        VerticalLineWidget(height: 200),
                        _buildTitle('Flutter'),
                        VerticalLineWidget(height: 200),
                        _buildTitle('Firebase'),
                        VerticalLineWidget(height: 200),
                        _buildTitle('State Management With Provider'),
                          VerticalLineWidget(height: 200),
                        _buildTitle('GetX'),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 260, // Adjust position as needed
                    left: 10, // Adjust position as needed
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            _buildTopic('Basics'),
                            _buildTopic('Control Flow'),
                            _buildTopic('Collections'),
                            _buildTopic('Exception Handling'),
            
                          ],
                        ),
                        HorizontalPointsWidget(
                          width: 300,
                          pointPositions: [for (var i = 20; i <= 280; i += 10) i.toDouble()],
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 510, // Adjust position as needed
                    right: 10, // Adjust position as needed
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        HorizontalPointsWidget(
                          width: 300,
                          pointPositions: [for (var i = 40; i <= 270; i += 10) i.toDouble()],
                        ),
                        Column(
                          children: [
                            _buildTopicbigger('Getting Started with Flutter'),
                            _buildTopicbigger('Building UI in Flutter'),
                            _buildTopicbigger('Advanced UI and Animations'),
                            _buildTopicbigger('Flutter Performance Optimization'),
                            
                          ],
                        ),
                      ],
                    ),
                  ),
                    Positioned(
                    top: 847, // Adjust position as needed
                    left: 1, // Adjust position as needed
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                      
                        Column(
                          children: [
                            _buildTopicbigger('Firebase Basics'),
                            _buildTopicbigger('Advanced Firebase Integration'),
                           
                          ],
                        ),
                          HorizontalPointsWidget(
                          width: 300,
                          pointPositions: [for (var i = 20; i <= 270; i += 10) i.toDouble()],
                        ),
                      ],
                    ),
                  ),
                       Positioned(
                    top: 1085, // Adjust position as needed
                    right: 1, // Adjust position as needed
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                       HorizontalPointsWidget(
                          width: 300,
                          pointPositions: [for (var i = 30; i <= 270; i += 10) i.toDouble()],
                        ),
                        Column(
                          children: [
                            _buildTopicbigger('Introduction to Provider'),
                            _buildTopicbigger('Advanced Provider Usage'),
                            _buildTopicbigger('Social Media Marketing'),
                            
                            
            
                          ],
                        ),
                         
                      ],
                    ),
                  ),
                   Positioned(
                    top: 1318, // Adjust position as needed
                    left: 1, // Adjust position as needed
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                     
                        Column(
                          children: [
                            _buildTopicbigger('State Management'),
                            _buildTopicbigger('Route Management'),
                            _buildTopicbigger('Dependency Management'),
                            _buildTopicbigger('Internationalization'),
            
                           
                            
            
                          ],
                        ),
                          HorizontalPointsWidget(
                          width: 300,
                          pointPositions: [for (var i = 20; i <= 270; i += 10) i.toDouble()],
                        ),
                         
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTopic(String topic) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        height: 50,
        width: 200,
        decoration: BoxDecoration(
          color: Color(0xffFDE290),
          borderRadius: BorderRadius.circular(6),
          border: Border.all(color: Colors.black, width: 3),
        ),
        child: Center(child: Text(topic, style: TextStyle(fontSize: 17),textAlign: TextAlign.center,)),
      ),
    );
  }
    Widget _buildTopicbigger(String topic) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        height: 60,
        width: 220,
        decoration: BoxDecoration(
          color: Color(0xffFDE290),
          borderRadius: BorderRadius.circular(6),
          border: Border.all(color: Colors.black, width: 3),
        ),
        child: Center(child: Text(topic, style: TextStyle(fontSize: 17),textAlign: TextAlign.center,)),
      ),
    );
  }

  Widget _buildTitle(String title) {
    return Container(
      height: 70,
      width: 220,
      decoration: BoxDecoration(
        color: Colors.yellow,
        borderRadius: BorderRadius.circular(6),
        border: Border.all(color: Colors.black, width: 3),
      ),
      child: Center(child: Text(title, style: TextStyle(fontSize: 17),textAlign: TextAlign.center,)),
    );
  }
}
