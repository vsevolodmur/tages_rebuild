import 'package:flutter/material.dart';
import 'package:tages_rebuild/pages/homepage/homepage.dart';

void main() {
  Paint.enableDithering = true;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: TextTheme(
          bodyText2: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ).apply(
          bodyColor: Color(0xff3827B4),
        ),
      ),
      home: HomePage(),
    );
  }
}
