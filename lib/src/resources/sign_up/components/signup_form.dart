import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_application/src/bloc/auth_bloc.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_application/src/config.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  AuthBloc authBloc = new AuthBloc();
  TextEditingController _nameController = new TextEditingController();
  TextEditingController _emailController = new TextEditingController();
  TextEditingController _passController = new TextEditingController();
  TextEditingController _phoneController = new TextEditingController();
  bool _isNotValidate = false;
  void registerUser() async {
    if (_emailController.text.isNotEmpty &&
        _passController.text.isNotEmpty &&
        _nameController.text.isNotEmpty &&
        _phoneController.text.isNotEmpty) {
      var regBody = {
        "email": _emailController.text,
        "password": _passController.text,
        "name": _nameController.text,
        "phonenumber": _phoneController.text,
      };
      var response = await http.post(Uri.parse(registration),
          headers: {"Content-Type": "application/json"},
          body: jsonEncode(regBody));
      var jsonResponse = jsonDecode(response.body);
      print(jsonResponse['status']);
    } else {
      setState(() {
        _isNotValidate = true;
      });
    }
  }

  @override
  void dispose() {
    authBloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(children: [
          SizedBox(
            height: 30,
          ),
          emailTextFormField(),
          SizedBox(
            height: 30,
          ),
          passwordTextFormField(),
          SizedBox(
            height: 30,
          ),
          nameTextFormField(),
          SizedBox(
            height: 30,
          ),
          phoneTextFormField(),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 50, 0, 40),
            child: SizedBox(
              width: 200,
              height: 52,
              child: ElevatedButton(
                onPressed: registerUser,
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
        ]),
      ),
    );
  }

  TextFormField emailTextFormField() {
    return TextFormField(
      controller: _emailController,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
          border: OutlineInputBorder(),
          hintText: "Enter your email ",
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: Icon(Icons.email_outlined)),
    );
  }

  TextFormField passwordTextFormField() {
    return TextFormField(
      controller: _passController,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
          border: OutlineInputBorder(),
          hintText: "Enter your password ",
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: Icon(Icons.email_outlined)),
    );
  }

  TextFormField nameTextFormField() {
    return TextFormField(
      controller: _nameController,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
          border: OutlineInputBorder(),
          hintText: "Enter your name ",
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: Icon(Icons.email_outlined)),
    );
  }

  TextFormField phoneTextFormField() {
    return TextFormField(
      controller: _phoneController,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
          border: OutlineInputBorder(),
          hintText: "Enter your phonenumber ",
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: Icon(Icons.email_outlined)),
    );
  }
}
