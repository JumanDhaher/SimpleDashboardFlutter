import 'package:flutter/material.dart';
import './dashboards_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dashboards',
      theme: ThemeData(
          primaryColor: Color(0Xff622F74), accentColor: Colors.white70),
      home: DashboardsScreen(),
    );
  }
}
