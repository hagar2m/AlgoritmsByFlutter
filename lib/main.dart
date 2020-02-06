import 'package:flutter/material.dart';

import 'screen/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Algorithms implement Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xff21243d),
        accentColor: Color(0xffff7c7c),
        scaffoldBackgroundColor: Color(0xffb9cced),

        // textTheme: TextTheme(
        //   body1: TextStyle(
        //     color: Colors.white
        //   ),
        //   title:  TextStyle(
        //     color: Colors.orange
        //   ),
        // )
      ),
      home: HomeScreen(),
    );
  }
}

