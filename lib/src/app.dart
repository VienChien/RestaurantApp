import 'package:flutter/material.dart';
import 'package:flutter_application/src/resources/home_page.dart';
import 'package:flutter_application/src/resources/history_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
