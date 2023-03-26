import 'package:flutter/material.dart';
import 'package:flutter_application/src/resources/home_page.dart';

class Acc_manager extends StatefulWidget {
  const Acc_manager({super.key});

  @override
  State<Acc_manager> createState() => _Acc_managerState();
}

TextEditingController _ConfirmPassController = new TextEditingController();
var _confirmpassErr = "Mat khau phai tren 6 ky tu";
var _confirmpassInvalid = false;

class _Acc_managerState extends State<Acc_manager> {
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
                    "Quản lý tài khoản",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Họ và tên",
                      hintStyle: TextStyle(fontSize: 15, color: Colors.black),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(30, 20, 30, 0),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Ngày sinh",
                      hintStyle: TextStyle(fontSize: 15, color: Colors.black),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(30, 20, 30, 0),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Số điện thoại",
                      hintStyle: TextStyle(fontSize: 15, color: Colors.black),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(30, 20, 30, 0),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Email",
                      hintStyle: TextStyle(fontSize: 15, color: Colors.black),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(30, 20, 30, 0),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Ngân hàng",
                      hintStyle: TextStyle(fontSize: 15, color: Colors.black),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(30, 20, 30, 0),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Số tài khoản",
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
