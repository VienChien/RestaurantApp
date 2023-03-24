import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TablePage extends StatefulWidget {
  const TablePage({super.key});

  @override
  _TablePageState createState() => _TablePageState();
}

double _value = 20;

class _TablePageState extends State<TablePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Container(
            width: double.infinity,
            height: 600,
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
                          child: Image(
                            image:
                                AssetImage("assets/images/homepage/table.png"),
                            fit: BoxFit.cover,
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
                            padding: const EdgeInsets.fromLTRB(0, 10, 80, 10),
                            child: Container(
                              decoration: new BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(30)),
                                  image: new DecorationImage(
                                    image:
                                        AssetImage("assets/images/avatar.jpg"),
                                  )),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                    child: Text(
                      "Số lượng khách",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                  Slider(
                    min: 0.0,
                    max: 100.0,
                    value: _value,
                    activeColor: Color.fromARGB(255, 80, 78, 80),
                    inactiveColor: Color.fromARGB(255, 80, 78, 80),
                    thumbColor: Color.fromARGB(255, 240, 134, 169),
                    onChanged: (value) {
                      setState(() {
                        _value = value;
                      });
                    },
                    divisions: 20,
                    label: "20",
                  )
                ],
              ),
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
                    onPressed: () {},
                  ),
                  IconButton(
                    alignment: Alignment.center,
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                    iconSize: 55,
                    icon: const Icon(
                      Icons.restaurant_menu_rounded,
                      color: Color.fromARGB(255, 129, 38, 38),
                    ),
                    onPressed: () {},
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

// class _HomePageState extends State<HomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         decoration: BoxDecoration(
//           image: DecorationImage(
//             image: AssetImage("assets/loading.jpg"),
//             fit: BoxFit.cover,
//           ),
//         ),
//         child: null /* add child content here */,
//       ),
//     );
//   }
// }
