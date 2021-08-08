import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'pages/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  final String title = 'Dear alice';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: title,
      theme: ThemeData(
        // primarySwatch: MaterialColor(14, <Map>{21: Colors.blue}),
        primaryColor: Colors.blue
      ),
      home: Home(),
    );
  }
}
