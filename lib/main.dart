
import 'package:flutter/material.dart';

import 'package:componentes_flutter/src/pages/home_temp.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lista',
      debugShowCheckedModeBanner: false,
      home: HomePageTemp(),
    );
  }
}