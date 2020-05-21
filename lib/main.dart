


import 'package:flutter/material.dart';
import 'package:componentes_flutter/src/pages/alert_page.dart';
import 'package:componentes_flutter/src/routes/routes.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lista',
      debugShowCheckedModeBanner: false,
      // home: HomePage(),
      initialRoute: 'home',
      routes: getApplicationRoutes(),
      onGenerateRoute: ( settings ) {
        return MaterialPageRoute(
          builder: (BuildContext context) => AlertPage()
        );
      } ,
    );
  }
}