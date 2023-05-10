import 'package:flutter/material.dart';
import 'package:flutter_application/src/resources/account/manager/acc_manager.dart';
import 'package:flutter_application/src/resources/account/password/pass_manager.dart';
import 'package:flutter_application/src/resources/account/support.dart';
import 'package:flutter_application/src/resources/history_page.dart';
import 'package:flutter_application/src/resources/home_page/home_page.dart';
import 'package:flutter_application/src/resources/login_page/login_page.dart';
import 'package:flutter_application/src/resources/voucher_page.dart';

class Account_Page extends StatefulWidget {
  const Account_Page({super.key});

  @override
  State<Account_Page> createState() => _Account_PageState();
}

class _Account_PageState extends State<Account_Page> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Container(
            color: Color.fromARGB(255, 247, 242, 236),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 40, 0, 0),
                      child: Container(
                        width: 230,
                        height: 230,
                        child: CircleAvatar(
                          backgroundImage:
                              AssetImage("assets/images/avatar.jpg"),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Ôn Tăng Gia Khánh",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(30, 20, 20, 0),
                        child: TextButton.icon(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Acc_manager()));
                          },
                          icon: Icon(Icons.account_circle),
                          label: Text("Quản lý tài khoản"),
                          style: TextButton.styleFrom(
                            foregroundColor: Colors.black,
                            textStyle: const TextStyle(
                              fontSize: 25,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(30, 5, 20, 0),
                        child: TextButton.icon(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Pass_Manager()));
                          },
                          icon: Icon(Icons.lock),
                          label: Text("Đổi mật khẩu"),
                          style: TextButton.styleFrom(
                            foregroundColor: Colors.black,
                            textStyle: const TextStyle(
                              fontSize: 25,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(30, 5, 20, 0),
                        child: TextButton.icon(
                          onPressed: () {},
                          icon: Icon(Icons.account_balance),
                          label: Text("Liên kết ngân hàng"),
                          style: TextButton.styleFrom(
                            foregroundColor: Colors.black,
                            textStyle: const TextStyle(
                              fontSize: 25,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(30, 5, 20, 0),
                        child: TextButton.icon(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SupportPage()));
                          },
                          icon: Icon(Icons.support_agent),
                          label: Text("Liên hệ hỗ trợ"),
                          style: TextButton.styleFrom(
                            foregroundColor: Colors.black,
                            textStyle: const TextStyle(
                              fontSize: 25,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(30, 5, 20, 0),
                        child: TextButton.icon(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LoginPage()));
                          },
                          icon: Icon(Icons.logout),
                          label: Text("Đăng xuất"),
                          style: TextButton.styleFrom(
                            foregroundColor: Colors.black,
                            textStyle: const TextStyle(
                              fontSize: 25,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          bottomNavigationBar: BottomAppBar(
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    width: 50,
                    height: 50,
                    child: IconButton(
                      alignment: Alignment.center,
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                      iconSize: 55,
                      icon: const Icon(
                        Icons.home,
                        color: Color.fromARGB(255, 129, 38, 38),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomePage()));
                      },
                    ),
                  ),
                  SizedBox(
                    width: 50,
                    height: 50,
                    child: IconButton(
                      alignment: Alignment.center,
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                      iconSize: 55,
                      icon: const Icon(
                        Icons.restaurant_menu_rounded,
                        color: Color.fromARGB(255, 129, 38, 38),
                      ),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => History()));
                      },
                    ),
                  ),
                  SizedBox(
                    width: 50,
                    height: 50,
                    child: IconButton(
                      alignment: Alignment.center,
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                      iconSize: 55,
                      icon: const Icon(
                        Icons.card_giftcard,
                        color: Color.fromARGB(255, 129, 38, 38),
                      ),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Voucher()));
                      },
                    ),
                  ),
                  SizedBox(
                    width: 50,
                    height: 50,
                    child: IconButton(
                      alignment: Alignment.center,
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                      iconSize: 55,
                      icon: const Icon(
                        Icons.person,
                        color: Color.fromARGB(255, 129, 38, 38),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Account_Page()));
                      },
                    ),
                  ),
                ],
              ))),
    );
  }
}
