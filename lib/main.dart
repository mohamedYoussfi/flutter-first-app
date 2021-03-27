import 'package:flutter/material.dart';
import 'package:my_app/global/global.parameter.dart';
import 'package:my_app/pages/counter.page.dart';
import 'package:my_app/pages/home.page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: GlobalParameters.routes,
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
        textTheme: TextTheme(
          bodyText2: TextStyle(fontSize: 22,color: Colors.deepOrange),
        )

      ),
    );
  }
}



