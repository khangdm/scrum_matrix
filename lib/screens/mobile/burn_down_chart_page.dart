import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:scrum_metrics/components/bar_chart_sample2.dart';

class BurnDownChartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: Text('BurnDown'),
      centerTitle: true,
      backgroundColor: Colors.red,
    ),
    body: BarChartSample2(),
  );
}