import 'dart:io';

import 'package:flutter/material.dart';
import 'package:scrum_metrics/screens/mobile/home_screen_mobile.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  final List<Color> availableColors = [
    Colors.purpleAccent,
    Colors.yellow,
    Colors.lightBlue,
    Colors.orange,
    Colors.pink,
    Colors.redAccent,
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: runInSpecialPlatform(),
    );
  }

  runInSpecialPlatform() {
    if(kIsWeb){
      return Text("hello");
    } else if(Platform.isAndroid || Platform.isIOS){
      return   HomeScreenMobile(title: "my home page",);
    } else return Text("Comming soon");
  }
}
/*Column(children: <Widget>[
            BarChartSample1(),
            SizedBox(
              height: 20,
            ),
            LineChartSample7(),
            SizedBox(
              height: 20,
            ),
            PieChartSample2(),
            BarChartSample2(),
            BarChartSample4(),
          ])*/