import 'package:appflutter/home_page.dart';
import 'package:appflutter/login.dart';
import 'package:flutter/material.dart';

import 'login.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
      
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/': (context) => Login(),
        '/home': (context) => MyHomePage(),
      },
    );
  }
}