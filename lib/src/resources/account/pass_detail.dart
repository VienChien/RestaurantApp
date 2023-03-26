import 'package:flutter/material.dart';
import 'package:flutter_application/src/resources/pass_manager.dart';

class Pass_detail extends StatefulWidget {
  const Pass_detail({super.key});

  @override
  State<Pass_detail> createState() => _Pass_detailState();
}

class _Pass_detailState extends State<Pass_detail> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          constraints: BoxConstraints.expand(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(30, 50, 30, 0),
                child: Text(
                  "Quản lý mật khẩu",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(30, 50, 30, 0),
                child: ElevatedButton.icon(
                  onPressed: onDetailPass,
                  icon: Icon(Icons.lock),
                  label: Text(
                    "Đổi mật khẩu",
                    style: TextStyle(fontSize: 30),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 219, 82, 82),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(30),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void onDetailPass() {
    setState(() {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => Pass_Manager()));
    });
  }
}
