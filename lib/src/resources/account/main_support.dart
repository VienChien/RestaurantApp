import 'package:flutter/material.dart';

class mainSupport extends StatefulWidget {
  const mainSupport({super.key});

  @override
  State<mainSupport> createState() => _mainSupportState();
}

class _mainSupportState extends State<mainSupport> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
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
                      backgroundImage: AssetImage("assets/images/avatar.jpg"),
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
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
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
                      onPressed: () {},
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
                      onPressed: () {},
                      icon: Icon(Icons.lock),
                      label: Text("Quản lý mật khẩu"),
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
                      onPressed: () {},
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
                      onPressed: () {},
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
    );
  }
}
