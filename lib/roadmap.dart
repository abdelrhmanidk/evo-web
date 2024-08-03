import 'package:evo/roadmabs/datascience.dart';
import 'package:evo/roadmabs/flutter.dart';
import 'package:evo/roadmabs/marketing.dart';
import 'package:flutter/material.dart';

class RoadMapPage extends StatelessWidget {
  final int index;

  RoadMapPage({required this.index});

  @override
  Widget build(BuildContext context) {
     Widget content;
      switch (index) {
      case 0:
        content = DataScienceRoadmap();
        break;
      case 1:
        content = FlutterRoadmap();
        break;
      case 2:
        content = MarketingRoadmap();
        break;
      default:
        content = Center(child: Text('Unknown Roadmap'));
    }
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(index  == 1 ? 'Flutter' : index == 0? 'Data Science': 'Marketing', style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.black,
      ),
       body:
       
       content
      // Center(
      //   child: Text(
      //     index == 1 ? 'Flutter Road Map Content Here' : index == 0? 'Data Science Road Map Content Here':'Marketing Road Map Content Here',
      //     style: TextStyle(
      //       fontSize: 24,
      //       color:Colors.black,
      //     ),
      //   ),
      // ),
    );
  }
}
