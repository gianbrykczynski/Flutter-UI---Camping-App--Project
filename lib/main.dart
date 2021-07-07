import 'package:camping_app/pages/welcome_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'lato'),
      home: WelcomePage(),
    ),
  );
}
