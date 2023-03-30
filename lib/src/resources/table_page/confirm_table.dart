import 'package:flutter/material.dart';
import 'package:flutter_application/src/resources/table_page/table_page.dart';

import '../home_page.dart';

class Confirm extends StatefulWidget {
  const Confirm({super.key});

  @override
  _ConfirmState createState() => _ConfirmState();
}

class _ConfirmState extends State<Confirm> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                      child: Container(
                        width: 170,
                        height: 300,
                        decoration: BoxDecoration(
                          borderRadius:
                              new BorderRadius.all(Radius.circular(20)),
                          color: Color.fromARGB(255, 124, 121, 121),
                          image: DecorationImage(
                              image: AssetImage("assets/images/avatar.jpg"),
                              fit: BoxFit.fill),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 100),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            "Trần Viên Chiến",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                                shadows: [
                                  Shadow(
                                      color: Color.fromARGB(255, 154, 154, 155),
                                      offset: Offset(1, 1),
                                      blurRadius: 10)
                                ]),
                          ),
                          Text(
                            "0925212574",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                                shadows: [
                                  Shadow(
                                      color: Color.fromARGB(255, 154, 154, 155),
                                      offset: Offset(1, 1),
                                      blurRadius: 10)
                                ]),
                          ),
                          Text(
                            "Nam",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                                shadows: [
                                  Shadow(
                                      color: Color.fromARGB(255, 154, 154, 155),
                                      offset: Offset(1, 1),
                                      blurRadius: 10)
                                ]),
                          ),
                          Text(
                            "Ngày Đặt Bàn: 26/3/2023",
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            "Ngày Bắt Đầu Tiệc: 30/3/2023",
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            "Ghi Chú",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                  child: Text(
                    "Món Ăn Đã Đặt",
                    style:
                        TextStyle(fontSize: 35, color: Colors.black, shadows: [
                      Shadow(
                          color: Color.fromARGB(255, 154, 154, 155),
                          offset: Offset(1, 1),
                          blurRadius: 10)
                    ]),
                  ),
                ),
                Container(
                  height: 280,
                  width: double.infinity,
                  child: new ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                    width: 140,
                                    height: 180,
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          new BorderRadius.circular(12),
                                      color: Colors.transparent,
                                      border: Border.all(
                                        width: 1,
                                      ),
                                    ),
                                    child: Image.asset(
                                      "assets/images/detail/food/laurieucua.png",
                                      fit: BoxFit.contain,
                                    )),
                                Text(
                                  "250.000 VNĐ",
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.red),
                                ),
                                Text(
                                  "Lẩu Riêu Cua",
                                  style: TextStyle(fontSize: 20),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                    width: 140,
                                    height: 180,
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          new BorderRadius.circular(12),
                                      color: Colors.transparent,
                                      border: Border.all(
                                        width: 1,
                                      ),
                                    ),
                                    child: Image.asset(
                                      "assets/images/detail/drink/cocktail.png",
                                      fit: BoxFit.contain,
                                    )),
                                Text(
                                  "79.000 VNĐ",
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.red),
                                ),
                                Text(
                                  "Cocktail",
                                  style: TextStyle(fontSize: 20),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                    width: 140,
                                    height: 180,
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          new BorderRadius.circular(12),
                                      color: Colors.transparent,
                                      border: Border.all(
                                        width: 1,
                                      ),
                                    ),
                                    child: Image.asset(
                                      "assets/images/detail/dessert/flan.png",
                                      fit: BoxFit.contain,
                                    )),
                                Text(
                                  "69.000 VNĐ",
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.red),
                                ),
                                Text(
                                  "Bánh Flan",
                                  style: TextStyle(fontSize: 20),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 300,
                  height: 60,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "Thanh Toán",
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
