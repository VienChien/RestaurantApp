import 'package:flutter/gestures.dart';
import 'package:flutter_application/src/bloc/auth_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application/src/resources/login_page.dart';
import 'package:flutter_application/src/resources/home_page.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  AuthBloc authBloc = new AuthBloc();
  TextEditingController _nameController = new TextEditingController();
  TextEditingController _emailController = new TextEditingController();
  TextEditingController _passController = new TextEditingController();
  TextEditingController _phoneController = new TextEditingController();

  var image_bg = AssetImage("assets/images/register.jpg");

  @override
  void dispose() {
    authBloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(190, 233, 64, 70),
        iconTheme: IconThemeData(color: Color.fromARGB(255, 117, 3, 3)),
        elevation: 0,
      ),
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
            // mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(
                height: 80,
              ),
              // Image.asset(name)
              Padding(
                padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
                child: Text(
                  "SIGN UP",
                  style: TextStyle(
                      fontSize: 50, color: Color.fromARGB(255, 178, 188, 197)),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 60, 0, 20),
                child: StreamBuilder(
                    stream: authBloc.nameStream,
                    builder: (context, snapshot) {
                      return TextField(
                        style: TextStyle(
                            fontSize: 18,
                            color: Color.fromARGB(255, 178, 188, 197)),
                        controller: _nameController,
                        decoration: InputDecoration(
                            errorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: BorderSide(
                                    width: 2,
                                    color: Color.fromARGB(255, 219, 82, 82))),
                            errorText: snapshot.hasError
                                ? snapshot.error.toString()
                                : null,
                            labelText: "Name",
                            labelStyle: TextStyle(
                                color: Color.fromARGB(255, 178, 188, 197)),
                            prefixIcon: Container(
                              width: 50,
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: const BorderSide(
                                  width: 2,
                                  color: Color.fromARGB(255, 178, 188, 197)),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: const BorderSide(
                                  width: 3,
                                  color: Color.fromARGB(255, 255, 255, 255)),
                            )),
                      );
                    }),
              ),
              StreamBuilder(
                  stream: authBloc.phoneStream,
                  builder: (context, snapshot) {
                    return TextField(
                      controller: _phoneController,
                      style: TextStyle(
                          fontSize: 18,
                          color: Color.fromARGB(255, 178, 188, 197)),
                      decoration: InputDecoration(
                          errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide(
                                  width: 2,
                                  color: Color.fromARGB(255, 219, 82, 82))),
                          errorText: snapshot.hasError
                              ? snapshot.error.toString()
                              : null,
                          labelStyle: TextStyle(
                              color: Color.fromARGB(255, 178, 188, 197)),
                          labelText: "Phone Number",
                          prefixIcon: Container(
                            width: 50,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: const BorderSide(
                                width: 2,
                                color: Color.fromARGB(255, 178, 188, 197)),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: const BorderSide(
                                width: 2,
                                color: Color.fromARGB(255, 255, 255, 255)),
                          )),
                    );
                  }),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                child: StreamBuilder(
                    stream: authBloc.emailStream,
                    builder: (context, snapshot) {
                      return TextField(
                        controller: _emailController,
                        style: TextStyle(
                            fontSize: 18,
                            color: Color.fromARGB(255, 178, 188, 197)),
                        decoration: InputDecoration(
                            errorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: BorderSide(
                                    width: 2,
                                    color: Color.fromARGB(255, 219, 82, 82))),
                            errorText: snapshot.hasError
                                ? snapshot.error.toString()
                                : null,
                            labelText: "Email",
                            labelStyle: TextStyle(
                                color: Color.fromARGB(255, 178, 188, 197)),
                            prefixIcon: Container(
                              width: 50,
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: const BorderSide(
                                  width: 2,
                                  color: Color.fromARGB(255, 178, 188, 197)),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: const BorderSide(
                                  width: 2,
                                  color: Color.fromARGB(255, 255, 255, 255)),
                            )),
                      );
                    }),
              ),
              StreamBuilder<dynamic>(
                  stream: authBloc.passStream,
                  builder: (context, snapshot) {
                    return TextField(
                      style: TextStyle(fontSize: 18, color: Colors.black),
                      obscureText: true,
                      decoration: InputDecoration(
                          errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide(
                                  width: 2,
                                  color: Color.fromARGB(255, 219, 82, 82))),
                          errorText: snapshot.hasError
                              ? snapshot.error.toString()
                              : null,
                          labelText: "Password",
                          labelStyle: TextStyle(
                              color: Color.fromARGB(255, 178, 188, 197)),
                          prefixIcon: Container(
                            width: 50,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: const BorderSide(
                                width: 2,
                                color: Color.fromARGB(255, 178, 188, 197)),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: const BorderSide(
                                width: 2,
                                color: Color.fromARGB(255, 255, 255, 255)),
                          )),
                    );
                  }),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 50, 0, 40),
                child: SizedBox(
                  width: 200,
                  height: 52,
                  child: ElevatedButton(
                    onPressed: onSignUpClicked,
                    child: Text(
                      "Sign Up",
                      style: TextStyle(color: Colors.white, fontSize: 18),
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
              Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 40),
                child: RichText(
                  text: TextSpan(
                    text: "Already a user?",
                    style: TextStyle(
                        fontSize: 16,
                        color: Color.fromARGB(255, 178, 188, 197)),
                    children: [
                      TextSpan(
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LoginPage()));
                          },
                        text: "Login now",
                        style: TextStyle(fontSize: 16, color: Colors.blue),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  onSignUpClicked() {
    var isValid = authBloc.isValid(_nameController.text, _emailController.text,
        _passController.text, _phoneController.text);
    if (isValid) {
      //create user
      authBloc.signUp(_nameController.text, _emailController.text,
          _passController.text, _phoneController.text, () {
        setState(() {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => LoginPage()));
        });
      });
    }
  }
}
