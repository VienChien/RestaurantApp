import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Container(
            color: Color.fromARGB(255, 245, 223, 183),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: double.maxFinite,
                    child: Image(
                      image: AssetImage("assets/images/homepage/appbar.png"),
                      fit: BoxFit.fill,
                    ),
                  ),
                  SizedBox(
                    width: 150,
                    child: Image(
                      image: AssetImage("assets/images/homepage/banner.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Hello",
                              style: TextStyle(fontSize: 23),
                            ),
                            Text(
                              "  Trần Văn A",
                              style: TextStyle(fontSize: 23),
                            ),
                            Text(
                              "  0925316482",
                              style: TextStyle(fontSize: 23),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                        child: Container(
                          width: 150,
                          height: 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            color: Color.fromARGB(255, 236, 81, 81),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(0, 10, 80, 10),
                            child: Image(
                              image: AssetImage(
                                  "assets/images/homepage/favourite.png"),
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                    child: Container(
                      width: double.infinity,
                      height: 500,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                        color: Color.fromARGB(255, 247, 242, 236),
                      ),
                      child: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(30, 20, 30, 0),
                                child: TextField(
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.black),
                                  decoration: InputDecoration(
                                    prefixIcon: Container(
                                      width: 30,
                                      child: IconButton(
                                        alignment: Alignment.center,
                                        iconSize: 35,
                                        icon: const Icon(
                                          Icons.search,
                                          color: Color.fromARGB(
                                              255, 133, 138, 143),
                                        ),
                                        onPressed: () {},
                                      ),
                                    ),
                                    labelText: "Tìm kiếm bàn trống",
                                    labelStyle: TextStyle(
                                        decoration: TextDecoration.underline,
                                        color:
                                            Color.fromARGB(255, 133, 138, 143)),
                                    enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Color.fromARGB(
                                                255, 133, 138, 143)),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(30))),
                                  ),
                                ),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      // Bàn 1
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            20, 20, 0, 20),
                                        child: Column(
                                          children: [
                                            SizedBox(
                                              width: 180,
                                              child: Image(
                                                image: AssetImage(
                                                    "assets/images/homepage/table.png"),
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.fromLTRB(
                                                      0, 0, 20, 0),
                                              child: Container(
                                                  width: 150,
                                                  height: 30,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(
                                                                30)),
                                                    color: Color.fromARGB(
                                                        255, 221, 163, 163),
                                                  ),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .fromLTRB(
                                                                15, 0, 0, 0),
                                                        child: Text(
                                                          "Bàn 1",
                                                          style: TextStyle(
                                                              fontSize: 15),
                                                        ),
                                                      ),
                                                      Icon(
                                                        Icons.groups,
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .fromLTRB(
                                                                0, 0, 15, 0),
                                                        child: Container(
                                                          width: 10,
                                                          height: 10,
                                                          decoration:
                                                              BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .all(Radius
                                                                        .circular(
                                                                            30)),
                                                            color:
                                                                Color.fromARGB(
                                                                    255,
                                                                    10,
                                                                    255,
                                                                    10),
                                                          ),
                                                        ),
                                                      )
                                                    ],
                                                  )),
                                            )
                                          ],
                                        ),
                                      ),
                                      // Bàn 2
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            0, 20, 0, 20),
                                        child: Column(
                                          children: [
                                            SizedBox(
                                              width: 180,
                                              child: Image(
                                                image: AssetImage(
                                                    "assets/images/homepage/table.png"),
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.fromLTRB(
                                                      0, 0, 20, 0),
                                              child: Container(
                                                  width: 150,
                                                  height: 30,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(
                                                                30)),
                                                    color: Color.fromARGB(
                                                        255, 221, 163, 163),
                                                  ),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .fromLTRB(
                                                                15, 0, 0, 0),
                                                        child: Text(
                                                          "Bàn 2",
                                                          style: TextStyle(
                                                              fontSize: 15),
                                                        ),
                                                      ),
                                                      Icon(
                                                        Icons.groups,
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .fromLTRB(
                                                                0, 0, 15, 0),
                                                        child: Container(
                                                          width: 10,
                                                          height: 10,
                                                          decoration:
                                                              BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .all(Radius
                                                                        .circular(
                                                                            30)),
                                                            color:
                                                                Color.fromARGB(
                                                                    255,
                                                                    10,
                                                                    255,
                                                                    10),
                                                          ),
                                                        ),
                                                      )
                                                    ],
                                                  )),
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      // Bàn 3
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            20, 20, 0, 20),
                                        child: Column(
                                          children: [
                                            SizedBox(
                                              width: 180,
                                              child: Image(
                                                image: AssetImage(
                                                    "assets/images/homepage/table.png"),
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.fromLTRB(
                                                      0, 0, 20, 0),
                                              child: Container(
                                                  width: 150,
                                                  height: 30,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(
                                                                30)),
                                                    color: Color.fromARGB(
                                                        255, 221, 163, 163),
                                                  ),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .fromLTRB(
                                                                15, 0, 0, 0),
                                                        child: Text(
                                                          "Bàn 3",
                                                          style: TextStyle(
                                                              fontSize: 15),
                                                        ),
                                                      ),
                                                      Icon(
                                                        Icons.groups,
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .fromLTRB(
                                                                0, 0, 15, 0),
                                                        child: Container(
                                                          width: 10,
                                                          height: 10,
                                                          decoration:
                                                              BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .all(Radius
                                                                        .circular(
                                                                            30)),
                                                            color:
                                                                Color.fromARGB(
                                                                    255,
                                                                    10,
                                                                    255,
                                                                    10),
                                                          ),
                                                        ),
                                                      )
                                                    ],
                                                  )),
                                            )
                                          ],
                                        ),
                                      ),
                                      // Bàn 4
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            0, 20, 0, 20),
                                        child: Column(
                                          children: [
                                            SizedBox(
                                              width: 180,
                                              child: Image(
                                                image: AssetImage(
                                                    "assets/images/homepage/table.png"),
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.fromLTRB(
                                                      0, 0, 20, 0),
                                              child: Container(
                                                  width: 150,
                                                  height: 30,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(
                                                                30)),
                                                    color: Color.fromARGB(
                                                        255, 221, 163, 163),
                                                  ),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .fromLTRB(
                                                                15, 0, 0, 0),
                                                        child: Text(
                                                          "Bàn 4",
                                                          style: TextStyle(
                                                              fontSize: 15),
                                                        ),
                                                      ),
                                                      Icon(
                                                        Icons.groups,
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .fromLTRB(
                                                                0, 0, 15, 0),
                                                        child: Container(
                                                          width: 10,
                                                          height: 10,
                                                          decoration:
                                                              BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .all(Radius
                                                                        .circular(
                                                                            30)),
                                                            color:
                                                                Color.fromARGB(
                                                                    255,
                                                                    10,
                                                                    255,
                                                                    10),
                                                          ),
                                                        ),
                                                      )
                                                    ],
                                                  )),
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              )
                            ],
                          )),
                    ),
                  )
                  // Padding(
                  //   padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                  //   child: Container(
                  //     child: SingleChildScrollView(
                  //       child: Image(
                  //         image: AssetImage(
                  //             "assets/images/homepage/background.png"),
                  //       ),
                  //     ),
                  //   ),
                  // )
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
                      Icons.favorite_border,
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
