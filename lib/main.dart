import 'package:flutter/material.dart';
import 'package:flutter_study/pages/home_page.dart';
import 'package:flutter_study/res/strings.dart';
import 'package:flutter_study/res/styles.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: StringsR.appTitle,
      theme: StylesR.mainTheme,
      home: HomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
