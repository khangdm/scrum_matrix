import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:scrum_metrics/widgets/navigation_drawer_widget.dart';

class TeamBalancePage extends StatelessWidget {
  final String title;

  TeamBalancePage({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(title)),
        body: Center(child: Text('My Page!')),
        drawer: NavigationDrawerWidget()
    );
  }
}