import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_application/src/resources/account/account_page.dart';
import 'package:flutter_application/src/resources/home_page.dart';
import 'package:flutter_application/src/resources/voucher_page.dart';

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
          body: SingleChildScrollView(
            child: Column(
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
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 133, 138, 143)),
                          borderRadius: BorderRadius.all(Radius.circular(30))),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                  child: Container(
                    width: double.infinity,
                    height: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      color: Color.fromARGB(255, 212, 209, 206),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                              child: SizedBox(
                                  width: 100,
                                  height: 100,
                                  child: Image.asset(
                                      "assets/images/homepage/table.png")),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Trần Viên Chiến",
                                  style: TextStyle(fontSize: 13),
                                ),
                                Text(
                                  "Bàn ăn A01",
                                  style: TextStyle(fontSize: 13),
                                ),
                                Text(
                                  "Ngày đặt bàn: 26/3/2023",
                                  style: TextStyle(fontSize: 13),
                                ),
                                Text(
                                  "Ngày bắt đầu tiệc: 29/3/2023",
                                  style: TextStyle(fontSize: 13),
                                ),
                                Text(
                                  "Thực Đơn: ",
                                  style: TextStyle(fontSize: 13),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(45, 0, 0, 80),
                              child: Container(
                                width: 10,
                                height: 10,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(30)),
                                  color: Color.fromARGB(255, 1, 255, 1),
                                ),
                              ),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Text(
                            "Ghi chú: ",
                            style: TextStyle(fontSize: 13),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                  child: Container(
                    width: double.infinity,
                    height: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      color: Color.fromARGB(255, 212, 209, 206),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                              child: SizedBox(
                                  width: 100,
                                  height: 100,
                                  child: Image.asset(
                                      "assets/images/homepage/table.png")),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Trần Viên Chiến",
                                  style: TextStyle(fontSize: 13),
                                ),
                                Text(
                                  "Bàn ăn A01",
                                  style: TextStyle(fontSize: 13),
                                ),
                                Text(
                                  "Ngày đặt bàn: 26/3/2023",
                                  style: TextStyle(fontSize: 13),
                                ),
                                Text(
                                  "Ngày bắt đầu tiệc: 29/3/2023",
                                  style: TextStyle(fontSize: 13),
                                ),
                                Text(
                                  "Thực Đơn: ",
                                  style: TextStyle(fontSize: 13),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(45, 0, 0, 80),
                              child: Container(
                                width: 10,
                                height: 10,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(30)),
                                  color: Color.fromARGB(255, 1, 255, 1),
                                ),
                              ),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Text(
                            "Ghi chú: ",
                            style: TextStyle(fontSize: 13),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                  child: Container(
                    width: double.infinity,
                    height: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      color: Color.fromARGB(255, 212, 209, 206),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                              child: SizedBox(
                                  width: 100,
                                  height: 100,
                                  child: Image.asset(
                                      "assets/images/homepage/table.png")),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Trần Viên Chiến",
                                  style: TextStyle(fontSize: 13),
                                ),
                                Text(
                                  "Bàn ăn A01",
                                  style: TextStyle(fontSize: 13),
                                ),
                                Text(
                                  "Ngày đặt bàn: 26/3/2023",
                                  style: TextStyle(fontSize: 13),
                                ),
                                Text(
                                  "Ngày bắt đầu tiệc: 29/3/2023",
                                  style: TextStyle(fontSize: 13),
                                ),
                                Text(
                                  "Thực Đơn: ",
                                  style: TextStyle(fontSize: 13),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(45, 0, 0, 80),
                              child: Container(
                                width: 10,
                                height: 10,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(30)),
                                  color: Color.fromARGB(255, 1, 255, 1),
                                ),
                              ),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Text(
                            "Ghi chú: ",
                            style: TextStyle(fontSize: 13),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                  child: Container(
                    width: double.infinity,
                    height: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      color: Color.fromARGB(255, 212, 209, 206),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                              child: SizedBox(
                                  width: 100,
                                  height: 100,
                                  child: Image.asset(
                                      "assets/images/homepage/table.png")),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Trần Viên Chiến",
                                  style: TextStyle(fontSize: 13),
                                ),
                                Text(
                                  "Bàn ăn A01",
                                  style: TextStyle(fontSize: 13),
                                ),
                                Text(
                                  "Ngày đặt bàn: 26/3/2023",
                                  style: TextStyle(fontSize: 13),
                                ),
                                Text(
                                  "Ngày bắt đầu tiệc: 29/3/2023",
                                  style: TextStyle(fontSize: 13),
                                ),
                                Text(
                                  "Thực Đơn: ",
                                  style: TextStyle(fontSize: 13),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(45, 0, 0, 80),
                              child: Container(
                                width: 10,
                                height: 10,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(30)),
                                  color: Color.fromARGB(255, 1, 255, 1),
                                ),
                              ),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Text(
                            "Ghi chú: ",
                            style: TextStyle(fontSize: 13),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                  child: Container(
                    width: double.infinity,
                    height: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      color: Color.fromARGB(255, 212, 209, 206),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                              child: SizedBox(
                                  width: 100,
                                  height: 100,
                                  child: Image.asset(
                                      "assets/images/homepage/table.png")),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Trần Viên Chiến",
                                  style: TextStyle(fontSize: 13),
                                ),
                                Text(
                                  "Bàn ăn A01",
                                  style: TextStyle(fontSize: 13),
                                ),
                                Text(
                                  "Ngày đặt bàn: 26/3/2023",
                                  style: TextStyle(fontSize: 13),
                                ),
                                Text(
                                  "Ngày bắt đầu tiệc: 29/3/2023",
                                  style: TextStyle(fontSize: 13),
                                ),
                                Text(
                                  "Thực Đơn: ",
                                  style: TextStyle(fontSize: 13),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(45, 0, 0, 80),
                              child: Container(
                                width: 10,
                                height: 10,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(30)),
                                  color: Color.fromARGB(255, 1, 255, 1),
                                ),
                              ),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Text(
                            "Ghi chú: ",
                            style: TextStyle(fontSize: 13),
                          ),
                        )
                      ],
                    ),
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
