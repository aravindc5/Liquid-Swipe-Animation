import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final pages = [
    Container(
      width: double.maxFinite,
      height: double.maxFinite,
      color: Colors.blueAccent,
    ),
    Container(
      width: double.maxFinite,
      height: double.maxFinite,
      color: Colors.red,
    ),
    Container(
      width: double.maxFinite,
      height: double.maxFinite,
      color: Colors.yellowAccent,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) => LiquidSwipe(pages: pages));
  }
}
