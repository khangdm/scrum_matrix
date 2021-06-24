import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

class BarChartSample2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => BarChartSample2State();
}

class BarChartSample2State extends State<BarChartSample2> {
  final Color leftBarColor = const Color(0xff2077b4);
  final Color centerBarColor = const Color(0xffff7f0e);
  final Color rightBarColor = const Color(0xff2da02c);
  final double width = 20;

  List<BarChartGroupData> rawBarGroups;
  List<BarChartGroupData> showingBarGroups;

  @override
  void initState() {
    super.initState();
    final barGroup1 = makeGroupData(1, 10, 1, 5);
    final barGroup2 = makeGroupData(2, 16, 12, 8);
    final barGroup3 = makeGroupData(3, 18, 5, 9);
    final barGroup4 = makeGroupData(4, 20, 10, 20);

    final items = [
      barGroup1,
      barGroup2,
      barGroup3,
      barGroup4,
    ];

    rawBarGroups = items;

    showingBarGroups = rawBarGroups;
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 500,
          padding: EdgeInsets.all(12),
          decoration: BoxDecoration(color: Colors.transparent),
          child: BarChart(
            BarChartData(
              maxY: 30,
              titlesData: FlTitlesData(
                show: true,
                bottomTitles: SideTitles(
                  showTitles: true,
                  getTextStyles: (value) => const TextStyle(
                      color: Color(0xff7589a2),
                      fontWeight: FontWeight.bold,
                      fontSize: 10),
                  getTitles: (double value) {
                    switch (value.toInt()) {
                      case 1:
                        return 'sprint1';
                      case 2:
                        return 'sprint2';
                      case 3:
                        return 'sprint3';
                      case 4:
                        return 'sprint4';
                      default:
                        return '';
                    }
                  },
                ),
                leftTitles: SideTitles(
                  showTitles: true,
                  getTextStyles: (value) => const TextStyle(
                      color: Color(0xff7589a2),
                      fontWeight: FontWeight.bold,
                      fontSize: 10),
                  reservedSize: 14,
                  getTitles: (value) {
                    if (value % 5 == 0) {
                      return "${value.toInt()}";
                    } else
                      return "";
                  },
                ),
              ),
              barGroups: showingBarGroups,
              gridData: FlGridData(
                show: true,
                checkToShowHorizontalLine: (value) => value % 5 == 0,
                getDrawingHorizontalLine: (value) => FlLine(
                  color: const Color(0xffe7e8ec),
                  strokeWidth: 1,
                ),
              ),
            ),
          ),
        ),
        Container(
          width: double.infinity,
          height: 500,
          padding: EdgeInsets.all(12),
          decoration: BoxDecoration(color: Colors.transparent),
          child: LineChart(
            LineChartData(
                gridData: FlGridData(
                  show: false,
                ),
                titlesData: FlTitlesData(
                  show: true,
                  bottomTitles: SideTitles(
                    showTitles: true,
                    getTextStyles: (value) => const TextStyle(
                        color: Color(0xff7589a2),
                        fontWeight: FontWeight.bold,
                        fontSize: 14),
                    getTitles: (double value) => "",
                  ),
                  leftTitles: SideTitles(
                    showTitles: true,
                    getTextStyles: (value) => const TextStyle(
                        color: Color(0xff7589a2),
                        fontWeight: FontWeight.bold,
                        fontSize: 14),
                    reservedSize: 14,
                    getTitles: (value) => "",
                  ),
                ),
                lineBarsData: [
                  LineChartBarData(
                    spots: [
                      FlSpot(0.3, 1),
                      FlSpot(1.1, 10),
                      FlSpot(1.9, 4),
                      FlSpot(2.7, 6),
                    ],
                    isCurved: false,
                    barWidth: 2,
                    colors: [
                      Colors.red,
                    ],
                    dotData: FlDotData(
                      show: false,
                    ),
                  ),
                ],
                minY: 0,
                maxY: 30,
                minX: 0,
                maxX: 3),
          ),
        )
      ],
    );
  }

  BarChartGroupData makeGroupData(int y, double x1, double x2, double x3) {
    return BarChartGroupData(barsSpace: 2, x: y, barRods: [
      BarChartRodData(
        y: x1,
        colors: [leftBarColor],
        width: width,
        borderRadius: const BorderRadius.all(Radius.zero),
      ),
      BarChartRodData(
        y: x2,
        colors: [centerBarColor],
        width: width,
        borderRadius: const BorderRadius.all(Radius.zero),
      ),
      BarChartRodData(
        y: x3,
        colors: [rightBarColor],
        width: width,
        borderRadius: const BorderRadius.all(Radius.zero),
      ),
    ]);
  }
}
