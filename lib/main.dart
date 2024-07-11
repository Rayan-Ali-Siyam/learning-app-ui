import 'package:flutter/material.dart';
import 'package:learning_app/pages/base.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Learning',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        primaryColor: Color.fromARGB(255, 80, 4, 224),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: BasePage(),
      routes: {
        '/home': (context) => BasePage(),
      },
    );
  }
}
