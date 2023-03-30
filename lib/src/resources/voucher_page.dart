import 'package:flutter/material.dart';
import 'package:flutter_application/src/resources/table_page/table_page.dart';

import 'home_page.dart';

class Voucher extends StatefulWidget {
  const Voucher({super.key});

  @override
  _VoucherState createState() => _VoucherState();
}

class _VoucherState extends State<Voucher> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                      child: Container(
                        width: 160,
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: new BorderRadius.horizontal(
                              left: Radius.circular(30)),
                          color: Color.fromARGB(255, 243, 113, 113),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(10, 10, 5, 10),
                              child: CircleAvatar(
                                backgroundImage:
                                    AssetImage("assets/images/avatar.jpg"),
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Trần Viên Chiến"),
                                Text("0925321321"),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Text(
                  "Voucher Của Bạn",
                  style: TextStyle(fontSize: 30, shadows: [
                    Shadow(
                        color: Color.fromARGB(255, 154, 154, 155),
                        offset: Offset(1, 1),
                        blurRadius: 50)
                  ]),
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
                SizedBox(
                  width: double.infinity,
                  child: Image(
                      image: AssetImage("assets/images/voucher/voucher1.png")),
                ),
                SizedBox(
                  width: double.infinity,
                  child: Image(
                      image: AssetImage("assets/images/voucher/voucher2.png")),
                ),
                SizedBox(
                  width: double.infinity,
                  child: Image(
                      image: AssetImage("assets/images/voucher/voucher1.png")),
                ),
                SizedBox(
                  width: double.infinity,
                  child: Image(
                      image: AssetImage("assets/images/voucher/voucher2.png")),
                ),
                SizedBox(
                  width: double.infinity,
                  child: Image(
                      image: AssetImage("assets/images/voucher/voucher1.png")),
                ),
              ],
            ),
          ),
          bottomNavigationBar: BottomAppBar(
              height: 60,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                    alignment: Alignment.center,
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                    iconSize: 60,
                    icon: const Icon(
                      Icons.home,
                      color: Color.fromARGB(255, 129, 38, 38),
                    ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => HomePage()));
                    },
                  ),
                  IconButton(
                    alignment: Alignment.center,
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                    iconSize: 55,
                    icon: const Icon(
                      Icons.restaurant_menu_rounded,
                      color: Color.fromARGB(255, 129, 38, 38),
                    ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => TablePage()));
                    },
                  ),
                  IconButton(
                    alignment: Alignment.center,
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                    iconSize: 60,
                    icon: const Icon(
                      Icons.card_giftcard,
                      color: Color.fromARGB(255, 129, 38, 38),
                    ),
                    onPressed: () {},
                  ),
                  IconButton(
                    alignment: Alignment.center,
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                    iconSize: 60,
                    icon: const Icon(
                      Icons.person,
                      color: Color.fromARGB(255, 129, 38, 38),
                    ),
                    onPressed: () {},
                  ),
                ],
              ))),
    );
  }
}
