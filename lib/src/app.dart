import 'package:flutter/material.dart';
import 'package:flutter_application/src/resources/account/account_page.dart';
import 'package:flutter_application/src/resources/dashboard.dart';
import 'package:flutter_application/src/resources/home_page/home_page.dart';
import 'package:flutter_application/src/resources/history_page.dart';
import 'package:flutter_application/src/resources/login_page/login_page.dart';
import 'package:flutter_application/src/resources/test/test.dart';
import 'package:jwt_decoder/jwt_decoder.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: (JwtDecoder.isExpired(token) == false)
      //     ? Dashboard(token: token)
      //     : LoginPage(),
      home: LoginPage(),
    );
  }
}
