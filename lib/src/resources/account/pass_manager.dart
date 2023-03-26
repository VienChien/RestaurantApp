import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_application/src/resources/home_page.dart';

class Pass_Manager extends StatefulWidget {
  const Pass_Manager({super.key});

  @override
  State<Pass_Manager> createState() => _Pass_ManagerState();
}

TextEditingController _ConfirmPassController = new TextEditingController();
var _confirmpassErr = "Mat khau phai tren 6 ky tu";
var _confirmpassInvalid = false;

class _Pass_ManagerState extends State<Pass_Manager> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          constraints: BoxConstraints.expand(),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(30, 50, 30, 0),
                  child: Text(
                    "Quản lý mật khẩu",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(30, 40, 30, 10),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Mật khẩu cũ",
                      hintStyle: TextStyle(fontSize: 15, color: Colors.black),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(30, 0, 30, 10),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Mật khẩu mới",
                      hintStyle: TextStyle(fontSize: 15, color: Colors.black),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                  child: TextField(
                    obscureText: true,
                    controller: _ConfirmPassController,
                    decoration: InputDecoration(
                      hintText: "Nhập lại mật khẩu",
                      errorText: _confirmpassInvalid ? _confirmpassErr : null,
                      hintStyle: TextStyle(fontSize: 15, color: Colors.black),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(50, 80, 50, 0),
                  child: ElevatedButton(
                    onPressed: onConfirmPass,
                    child: Text(
                      "Xác nhận",
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 219, 82, 82),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void onConfirmPass() {
    setState(() {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => HomePage()));
      // if (_ConfirmPassController.text.length < 6) {
      //   _confirmpassInvalid = true;
      // } else {
      //   _confirmpassInvalid = false;
      // }
      // if (!_confirmpassInvalid) {

      //   // Navigator.push(
      //   //   context, MaterialPageRoute(builder: (context) => HomePage()));
      // }
    });
  }
}
