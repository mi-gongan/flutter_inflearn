import "package:flutter/material.dart";
import 'package:inflearn/screen/date_screen.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(
        textTheme: const TextTheme(
          headline1: TextStyle(
            color: Colors.white,
            fontFamily: 'parisienne',
            fontSize: 80.0,
          ),
          headline2: TextStyle(
            color: Colors.white,
            fontFamily: 'sunflower',
            fontSize: 50.0,
            fontWeight: FontWeight.w700,
          ),
          bodyText1: TextStyle(
            color: Colors.white,
            fontFamily: 'sunflower',
            fontSize: 30.0,
          ),
          bodyText2: TextStyle(
            color: Colors.white,
            fontFamily: 'sunflower',
            fontSize: 20.0,
          ),
        ),
      ),
      home: const DateScreen(),
    ),
  );
}
