import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:scrum_metrics/components/bar_chart_sample1.dart';
import 'package:scrum_metrics/components/bar_chart_sample4_state.dart';

class CodingTimePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: Text('Coding time'),
      centerTitle: true,
      backgroundColor: Colors.red,
    ),
    body: Column(
      children: [
        BarChartSample4(),
        note(),
      ],
    ),
  );
}

Widget note() {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
      children: [
        SizedBox(height: 10,),
        getRow(Color(0xffc61313), "bug"),
        SizedBox(height: 10,),
        getRow(Color(0xff64caad), "hot fix"),
        SizedBox(height: 10,),
        getRow(Color(0xff00ff00), "release"),
      ],
    ),
  );
}

Widget getRow(Color color, String name){
  return Row(
    children: [
      Container(
        width: 20,
        height: 20,
        decoration: BoxDecoration(
            color: color
        ),
      ),
      SizedBox(width: 5,),
      Text(name, style: const TextStyle(color: Colors.black, fontSize: 10),),
    ],
  );
}