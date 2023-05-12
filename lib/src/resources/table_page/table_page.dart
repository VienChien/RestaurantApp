import 'package:flutter/material.dart';
import 'package:flutter_application/src/resources/bottombar.dart';
import 'package:flutter_application/src/resources/table_page/confirm_table.dart';
import 'package:flutter_application/src/resources/table_page/foodlist/dessert.dart';
import 'package:flutter_application/src/resources/table_page/foodlist/drink.dart';
import 'package:flutter_application/src/resources/table_page/foodlist/food.dart';

class TablePage extends StatefulWidget {
  final token;
  const TablePage({super.key, @required this.token});

  @override
  _TablePageState createState() => _TablePageState();
}

class _TablePageState extends State<TablePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Container(
            width: double.infinity,
            height: 1900,
            color: Color.fromARGB(255, 247, 242, 236),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                        child: SizedBox(
                          width: 160,
                          height: 150,
                          child: Container(
                            child: Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(48, 50, 30, 20),
                              child: Text(
                                "Bàn A",
                                style: TextStyle(fontSize: 20),
                              ),
                            ),
                            decoration: BoxDecoration(
                                image: DecorationImage(
                              image: AssetImage(
                                  "assets/images/homepage/table.png"),
                            )),
                            // child: Image(
                            //   image:
                            //       AssetImage("assets/images/homepage/table.png"),
                            //   fit: BoxFit.cover,
                            // ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 0, 50),
                        child: Container(
                          width: 160,
                          height: 60,
                          decoration: BoxDecoration(
                            borderRadius: new BorderRadius.horizontal(
                                left: Radius.circular(30)),
                            color: Color.fromARGB(255, 243, 113, 113),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                            child: Row(
                              children: [
                                CircleAvatar(
                                  backgroundImage:
                                      AssetImage("assets/images/avatar.jpg"),
                                ),
                                Text("Viên Chiến")
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  // Padding(
                  //   padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                  //   child: Text(
                  //     "Số lượng khách",
                  //     textAlign: TextAlign.left,
                  //     style: TextStyle(
                  //       fontSize: 20,
                  //     ),
                  //   ),
                  // ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                    child: Text(
                      "Thức Ăn Chính",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  FoodList(),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                    child: Text(
                      "Nước Uống",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  DrinkList(),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                    child: Text(
                      "Món Tráng Miệng",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  DessertList(),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 10, 0, 20),
                    child: Center(
                      child: SizedBox(
                        width: 250,
                        height: 50,
                        child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ConfirmTable()));
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color.fromARGB(255, 219, 82, 82),
                              shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30)),
                              ),
                            ),
                            child: Text(
                              "Đặt món",
                              style: TextStyle(fontSize: 25),
                            )),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          bottomNavigationBar:
              BottomAppBar(height: 50, child: BottombarRestaurant(context))),
    );
  }
}
