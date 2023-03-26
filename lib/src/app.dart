import 'package:flutter/material.dart';
import 'package:flutter_application/src/resources/acc_manager.dart';
import 'package:flutter_application/src/resources/login_page.dart';
import 'package:flutter_application/src/resources/home_page.dart';

import 'package:flutter_application/src/resources/table_page.dart';
import 'package:flutter_application/src/resources/pass_detail.dart';
import 'package:flutter_application/src/resources/pass_manager.dart';
import 'package:flutter_application/src/resources/register_page.dart';
import 'package:flutter_application/src/resources/main_support.dart';
import 'package:flutter_application/src/resources/support.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: mainSupport(),
    );
  }
}
