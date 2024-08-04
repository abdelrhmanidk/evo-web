import 'package:evo/widges/horiziontalpointswidget.dart';
import 'package:evo/widges/verticalline.dart';
import 'package:evo/widges/verticalpointsline.dart';
import 'package:flutter/material.dart';

class DataScienceRoadmap extends StatelessWidget {
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
                        Text('Data Science', style: TextStyle(fontSize: 30)),
                        VerticalLineWidget(height: 200),
                        _buildTitle('Mathematics'),
                        VerticalLineWidget(height: 200),
                        _buildTitle('Probabilities'),
                        VerticalLineWidget(height: 200),
                        _buildTitle('Statistics'),
                        VerticalLineWidget(height: 200),
                        _buildTitle('BASIC PROGRAMMING'),
                          VerticalLineWidget(height: 200),
                        _buildTitle('DataBase'),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 290, // Adjust position as needed
                    left: 10, // Adjust position as needed
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            _buildTopic('Linear Algebra'),
                            _buildTopic('Calculus'),
                            _buildTopic('Matrix'),
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
                    top: 405, // Adjust position as needed
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
                            _buildTopicbigger('Introduction to Probability'),
                            _buildTopicbigger('1D Random Variable'),
                            _buildTopicbigger('The function of One Random Variable'),
                            _buildTopicbigger('Joint Probability Distribution'),
                            _buildTopicbigger('Discrete Distribution'),
                            _buildTopicbigger('Continues Distribution'),
                            _buildTopicbigger('Normal Distribution'),
                          ],
                        ),
                      ],
                    ),
                  ),
                    Positioned(
                    top: 500, // Adjust position as needed
                    left: 1, // Adjust position as needed
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                      
                        Column(
                          children: [
                            _buildTopicbigger('Introduction to Statistics'),
                            _buildTopicbigger('Data Description'),
                            _buildTopicbigger('Random Samples'),
                            _buildTopicbigger('Sampling Distribution'),
                            _buildTopicbigger('Parameter Estimation'),
                            _buildTopicbigger('Hypotheses Testing'),
                            _buildTopicbigger('Design of Experiments'),
                            _buildTopicbigger('Simple Linear Regression'),
                            _buildTopicbigger('Correlation'),
                            _buildTopicbigger('Multiple Regression'),
                            _buildTopicbigger('Basics of Graphs'),
                            _buildTopicbigger('Monte Carlo method'),
            
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
                    top: 1065, // Adjust position as needed
                    right: 1, // Adjust position as needed
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                       HorizontalPointsWidget(
                          width: 300,
                          pointPositions: [for (var i = 20; i <= 270; i += 10) i.toDouble()],
                        ),
                        Column(
                          children: [
                            _buildTopic('Python'),
                            _buildTopic('NumPy'),
                            _buildTopic('Pandas'),
                            _buildTopic('Matplotlib/Seaborn'),
                            
            
                          ],
                        ),
                         
                      ],
                    ),
                  ),
                   Positioned(
                    top: 1400, // Adjust position as needed
                    right: 1, // Adjust position as needed
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                       HorizontalPointsWidget(
                          width: 300,
                          pointPositions: [for (var i = 20; i <= 270; i += 10) i.toDouble()],
                        ),
                        Column(
                          children: [
                            _buildTopic('SQL'),
                            _buildTopic('MongoDB'),
                           
                            
            
                          ],
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
