import 'package:flutter/material.dart';
import 'package:movieapp/screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        accentColor: Colors.black,
        primaryColor: Colors.white,
      ),
      home: HomeScreen(),
    );
  }
}
