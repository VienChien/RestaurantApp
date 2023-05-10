import 'dart:convert' show jsonDecode, jsonEncode;
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter_application/src/resources/dashboard.dart';
import 'package:flutter_application/src/resources/sign_up/register_page.dart';
import 'package:flutter_application/src/resources/home_page/home_page.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_application/src/config.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _emailController = new TextEditingController();
  TextEditingController _passController = new TextEditingController();
  var _userNameErr = "Tai Khoan Khong Hop Le";
  var _passErr = "Mat khau phai tren 6 ky tu";
  var _userInvalid = false;
  var _passInvalid = false;
  var image_bg = AssetImage("assets/images/background.png");

// bool _isNotValidate = false;
  late SharedPreferences prefs;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initSharedPref();
  }

  void initSharedPref() async {
    prefs = await SharedPreferences.getInstance();
  }

  void loginUser() async {
    if (_emailController.text.isNotEmpty && _passController.text.isNotEmpty) {
      var reqBody = {
        "email": _emailController.text,
        "password": _passController.text,
      };

      var response = await http.post(Uri.parse(login),
          headers: {"Content-Type": "application/json"},
          body: jsonEncode(reqBody));

      var jsonResponse = jsonDecode(response.body);
      if (jsonResponse['status']) {
        var myToken = jsonResponse['token'];
        prefs.setString('token', myToken);
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => HomePage(token: myToken)));
      } else {
        print('Something went wrong');
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    precacheImage(image_bg, context);
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: image_bg,
            fit: BoxFit.cover,
          ),
        ),
        padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
        constraints: BoxConstraints.expand(),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 300,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 100, 0, 20),
                child: TextField(
                  style: TextStyle(fontSize: 18, color: Colors.white),
                  controller: _emailController,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    labelText: "Email",
                    labelStyle:
                        TextStyle(color: Color.fromARGB(255, 178, 188, 197)),
                    errorText: _userInvalid ? _userNameErr : null,
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromARGB(255, 178, 188, 197)),
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                  ),
                ),
              ),
              TextField(
                style: TextStyle(fontSize: 18, color: Colors.black),
                controller: _passController,
                keyboardType: TextInputType.text,
                obscureText: true,
                decoration: InputDecoration(
                    labelStyle:
                        TextStyle(color: Color.fromARGB(255, 178, 188, 197)),
                    labelText: "Password",
                    errorText: _passInvalid ? _passErr : null,
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color.fromARGB(255, 178, 188, 197)),
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                    )),
              ),
              // Container(
              //   constraints: BoxConstraints.loose(Size(double.infinity, 30)),
              //   alignment: AlignmentDirectional.centerEnd,
              //   child: Padding(
              //     padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
              //     child: Text(
              //       "Forgot Password?",
              //       style: TextStyle(fontSize: 16, color: Color(0xff606470)),
              //     ),
              //   ),
              // ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 30, 0, 50),
                child: SizedBox(
                  width: 200,
                  height: 52,
                  child: ElevatedButton(
                    onPressed: loginUser,
                    child: Text(
                      "Sign In",
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 219, 82, 82),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                      ),
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => RegisterPage()));
                            },
                          text: "Sign up",
                          style: TextStyle(
                            color: Color.fromARGB(255, 178, 188, 197),
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => RegisterPage()));
                            },
                          text: "Forgot Password",
                          style: TextStyle(
                            color: Color(0xff2177D8),
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  // void onSignInClicked() {
  //   setState(() {
  //     Navigator.push(
  //         context, MaterialPageRoute(builder: (context) => RegisterPage()));
  //   });
  // }

  // void onSignInClicked() {
  //   setState(() {
  //     if (_emailController.text.length < 6 ||
  //         !_emailController.text.contains("@gmail.com")) {
  //       _userInvalid = true;
  //     } else {
  //       _userInvalid = false;
  //     }
  //     ;

  //     if (_passController.text.length < 6) {
  //       _passInvalid = true;
  //     } else {
  //       _passInvalid = false;
  //     }
  //     if (!_userInvalid && !_passInvalid) {
  //       Navigator.push(
  //           context, MaterialPageRoute(builder: (context) => HomePage()));
  //       // Navigator.push(
  //       //   context, MaterialPageRoute(builder: (context) => HomePage()));
  //     }
  //   });
  // }
}
