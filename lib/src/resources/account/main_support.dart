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
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                child: Image(
                  image: AssetImage("assets/images/homepage/avatar.png"),
                  fit: BoxFit.fill,
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(80, 40, 0, 0),
                width: 300,
                height: 300,
                child: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/avatar.jpg"),
                ),
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ElevatedButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.account_circle),
                      label: Text("Quản lý tài khoản"),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                      child: ElevatedButton.icon(
                        onPressed: () {},
                        icon: Icon(Icons.lock),
                        label: Text("Quản lý mật khẩu"),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                      child: ElevatedButton.icon(
                        onPressed: () {},
                        icon: Icon(Icons.account_balance),
                        label: Text("Liên kết ngân hàng"),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                      child: ElevatedButton.icon(
                        onPressed: () {},
                        icon: Icon(Icons.support_agent),
                        label: Text("Liên hệ hỗ trợ"),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                      child: ElevatedButton.icon(
                        onPressed: () {},
                        icon: Icon(Icons.settings),
                        label: Text("Cài đặt"),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
