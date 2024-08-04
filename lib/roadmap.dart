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
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 18.0, top: 6, bottom: 6),
            child: Image.asset('images/evo-vector.png',height: 30,),
          )
        ],
      ),
       body:
       
       content
      
    );
  }
}
