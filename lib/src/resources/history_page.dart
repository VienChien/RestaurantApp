import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class History extends StatefulWidget {
  const History({super.key});

  @override
  State<History> createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
            child: Center(
                child: Text(
              "Trạng Thái Bàn Của Bạn",
              style: TextStyle(fontSize: 25),
            )),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 20, 30, 20),
            child: TextField(
              style: TextStyle(fontSize: 13, color: Colors.black),
              decoration: InputDecoration(
                prefixIcon: Container(
                  child: IconButton(
                    alignment: Alignment.center,
                    iconSize: 25,
                    icon: const Icon(
                      Icons.search,
                      color: Color.fromARGB(255, 133, 138, 143),
                    ),
                    onPressed: () {},
                  ),
                ),
                labelText: "Tìm kiếm voucher...",
                labelStyle: TextStyle(
                    decoration: TextDecoration.underline,
                    color: Color.fromARGB(255, 133, 138, 143)),
                enabledBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Color.fromARGB(255, 133, 138, 143)),
                    borderRadius: BorderRadius.all(Radius.circular(30))),
              ),
            ),
          ),
        ],
      )),
    );
  }
}
