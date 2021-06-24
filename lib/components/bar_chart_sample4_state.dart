import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class BarChartSample4 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => BarChartSample4State();
}

class BarChartSample4State extends State<BarChartSample4> {
  final Color bug = const Color(0xffc61313);
  final Color hotfix = const Color(0xff64caad);
  final Color release = const Color(0xff00ff00);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.66,
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.only(top: 16.0),
          child: BarChart(
            BarChartData(
              maxY: 30,
              alignment: BarChartAlignment.center,
              barTouchData: BarTouchData(
                enabled: false,
              ),
              titlesData: FlTitlesData(
                show: true,
                bottomTitles: SideTitles(
                  showTitles: true,
                  getTextStyles: (value) =>
                      const TextStyle(color: Color(0xff939393), fontSize: 10),
                  margin: 10,
                  getTitles: (double value) {
                    switch (value.toInt()) {
                      case 0:
                        return 'Apr';
                      case 1:
                        return 'May';
                      case 2:
                        return 'Jun';
                      case 3:
                        return 'Jul';
                      case 4:
                        return 'Aug';
                      default:
                        return '';
                    }
                  },
                ),
                leftTitles: SideTitles(
                  showTitles: true,
                  getTitles: (value) {
                    if (value % 5 == 0) {
                      return "${value.toInt()}";
                    } else
                      return "";
                  },
                  getTextStyles: (value){
                      return const TextStyle(
                          color: Color(
                            0xff939393,
                          ),
                          fontSize: 10);
                    },
                    margin: 0,
                ),
              ),
              gridData: FlGridData(
                show: true,
                checkToShowHorizontalLine: (value) => value % 5 == 0,
                getDrawingHorizontalLine: (value) => FlLine(
                  color: const Color(0xffe7e8ec),
                  strokeWidth: 1,
                ),
              ),
              borderData: FlBorderData(
                show: false,
              ),
              groupsSpace: 20,
              barGroups: getData(),
            ),
          ),
        ),
      ),
    );
  }

  List<BarChartGroupData> getData() {
    var width = 15.0;
    return [
      BarChartGroupData(
        x: 0,
        barsSpace: 4,
        barRods: [
          BarChartRodData(
              width: width,
              y: 15,
              rodStackItems: [
                BarChartRodStackItem(0, 5, bug),
                BarChartRodStackItem(5, 6, hotfix),
                BarChartRodStackItem(6, 15, release),
              ],
              borderRadius: const BorderRadius.all(Radius.zero)),
          BarChartRodData(
              y: 20,
              width: width,
              rodStackItems: [
                BarChartRodStackItem(0, 4, bug),
                BarChartRodStackItem(4, 6, hotfix),
                BarChartRodStackItem(6, 20, release),
              ],
              borderRadius: const BorderRadius.all(Radius.zero)),
        ],
      ),
      BarChartGroupData(
        x: 1,
        barsSpace: 4,
        barRods: [
          BarChartRodData(
            width: width,
              y: 20,
              rodStackItems: [
                BarChartRodStackItem(0, 4, bug),
                BarChartRodStackItem(4, 10, hotfix),
                BarChartRodStackItem(10, 20, release),
              ],
              borderRadius: const BorderRadius.all(Radius.zero)),
          BarChartRodData(
              width: width,
              y: 20,
              rodStackItems: [
                BarChartRodStackItem(0, 4, bug),
                BarChartRodStackItem(4, 6, hotfix),
                BarChartRodStackItem(6, 20, release),
              ],
              borderRadius: const BorderRadius.all(Radius.zero)),
        ],
      ),
      BarChartGroupData(
        x: 2,
        barsSpace: 4,
        barRods: [
          BarChartRodData(
              width: width,
              y: 25,
              rodStackItems: [
                BarChartRodStackItem(0, 5, bug),
                BarChartRodStackItem(5, 6, hotfix),
                BarChartRodStackItem(6, 25, release),
              ],
              borderRadius: const BorderRadius.all(Radius.zero)),
          BarChartRodData(
              width: width,
              y: 25,
              rodStackItems: [
                BarChartRodStackItem(0, 6, bug),
                BarChartRodStackItem(6, 6, hotfix),
                BarChartRodStackItem(6, 25, release),
              ],
              borderRadius: const BorderRadius.all(Radius.zero)),
        ],
      ),
      BarChartGroupData(
        x: 3,
        barsSpace: 4,
        barRods: [
          BarChartRodData(
              width: width,
              y: 1,
              rodStackItems: [
                BarChartRodStackItem(0, 1, bug),
              ],
              borderRadius: const BorderRadius.all(Radius.zero)),
          BarChartRodData(
              width: width,
              y: 20,
              rodStackItems: [
                BarChartRodStackItem(0, 4, bug),
                BarChartRodStackItem(4, 6, hotfix),
                BarChartRodStackItem(6, 20, release),
              ],
              borderRadius: const BorderRadius.all(Radius.zero)),
        ],
      ),
      BarChartGroupData(
        x: 4,
        barsSpace: 4,
        barRods: [
          BarChartRodData(
              width: width,
              y: 30,
              rodStackItems: [
                BarChartRodStackItem(0, 0, bug),
                BarChartRodStackItem(0, 1, hotfix),
                BarChartRodStackItem(1, 30, release),
              ],
              borderRadius: const BorderRadius.all(Radius.zero)),
          BarChartRodData(
              width: width,
              y: 30,
              rodStackItems: [
                BarChartRodStackItem(0, 10, bug),
                BarChartRodStackItem(10, 15, hotfix),
                BarChartRodStackItem(15, 30, release),
              ],
              borderRadius: const BorderRadius.all(Radius.zero)),
        ],
      ),
    ];
  }
}
