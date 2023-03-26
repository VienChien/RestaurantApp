import 'package:flutter/material.dart';

class SuccessPage extends StatefulWidget {
  const SuccessPage({super.key});

  @override
  State<SuccessPage> createState() => _SuccessPageState();
}

var image_sc = AssetImage("assets/images/confirm.png");

class _SuccessPageState extends State<SuccessPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
        
        ),
      ),
    );
  }
}
