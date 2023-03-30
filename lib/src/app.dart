import 'package:flutter/material.dart';
<<<<<<< Updated upstream
=======
import 'package:flutter_application/src/resources/account/main_support.dart';
>>>>>>> Stashed changes
import 'package:flutter_application/src/resources/login_page.dart';
import 'package:flutter_application/src/resources/home_page.dart';

import 'package:flutter_application/src/resources/table_page/table_page.dart';
import 'package:flutter_application/src/resources/register_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
<<<<<<< Updated upstream
      home: HomePage(),
=======
<<<<<<< HEAD
      home: mainSupport(),
=======
      home: HomePage(),
>>>>>>> 5bab61eb2febc80e2f2693ce315dbb9088e8e162
>>>>>>> Stashed changes
    );
  }
}
