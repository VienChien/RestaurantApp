import 'package:flutter/material.dart';

class mainSupport extends StatefulWidget {
  const mainSupport({super.key});

  @override
  State<mainSupport> createState() => _mainSupportState();
}

class _mainSupportState extends State<mainSupport> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                child: Image(
                  image: AssetImage("assets/images/homepage/avatar.png"),
                  fit: BoxFit.fill,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
