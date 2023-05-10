import 'package:flutter/material.dart';
import 'package:flutter_application/src/resources/account/account_page.dart';
import 'package:flutter_application/src/resources/history_page.dart';
import 'package:flutter_application/src/resources/home_page/model/table.dart';
import 'package:flutter_application/src/resources/table_page/table_page.dart';
import 'package:flutter_application/src/resources/voucher_page.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' show jsonDecode, jsonEncode;
import 'package:flutter_application/src/config.dart';

class HomePage extends StatefulWidget {
  final token;
  const HomePage({super.key, @required this.token});

  @override
  _HomePageState createState() => _HomePageState();
}

Future<Test> fetchTest() async {
  final response = await http
      .get(Uri.parse('https://jsonplaceholder.typicode.com/albums/1'));

  if (response.statusCode == 200) {
    return Test.fromJson(jsonDecode(response.body));
  } else {
    throw Exception('Failed to load Test');
  }
}

class _HomePageState extends State<HomePage> {
  late String email, userId;
  List? items;
  late Future<Test> futureTest;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Map<String, dynamic> jwtDecodedToken = JwtDecoder.decode(widget.token);
    futureTest = fetchTest();
    email = jwtDecodedToken['email'];
  }

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
                        padding: const EdgeInsets.fromLTRB(15, 0, 0, 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Hello",
                              style: TextStyle(fontSize: 23),
                            ),
                            Text(
                              email,
                              style: TextStyle(fontSize: 23),
                            ),
                            Text(
                              "0",
                              style: TextStyle(fontSize: 23),
                            ),
                          ],
                        ),
                      ),
                      Center(
                        child: FutureBuilder<Test>(
                          future: futureTest,
                          builder: (context, snapshot) {
                            if (snapshot.hasData) {
                              return Text(snapshot.data!.title);
                            } else if (snapshot.hasError) {
                              return Text('${snapshot.error}');
                            }

                            return const CircularProgressIndicator();
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 0, 40),
                        child: Container(
                          width: 100,
                          height: 60,
                          decoration: BoxDecoration(
                            borderRadius: new BorderRadius.horizontal(
                                left: Radius.circular(30)),
                            color: Color.fromARGB(255, 243, 113, 113),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(0, 10, 30, 10),
                            child: CircleAvatar(
                              backgroundImage:
                                  AssetImage("assets/images/avatar.jpg"),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                    child: Container(
                      width: double.infinity,
                      height: 950,
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(30)),
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
                                                width: 140,
                                                child: GestureDetector(
                                                  child: Image(
                                                    image: AssetImage(
                                                        "assets/images/homepage/table.png"),
                                                    fit: BoxFit.cover,
                                                  ),
                                                  onTap: () {
                                                    Navigator.push(
                                                        context,
                                                        MaterialPageRoute(
                                                            builder: (context) =>
                                                                TablePage()));
                                                  },
                                                )),
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
                                            20, 20, 0, 20),
                                        child: Column(
                                          children: [
                                            SizedBox(
                                                width: 140,
                                                child: GestureDetector(
                                                  child: Image(
                                                    image: AssetImage(
                                                        "assets/images/homepage/table.png"),
                                                    fit: BoxFit.cover,
                                                  ),
                                                  onTap: () {
                                                    Navigator.push(
                                                        context,
                                                        MaterialPageRoute(
                                                            builder: (context) =>
                                                                TablePage()));
                                                  },
                                                )),
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
                                                width: 140,
                                                child: GestureDetector(
                                                  child: Image(
                                                    image: AssetImage(
                                                        "assets/images/homepage/table.png"),
                                                    fit: BoxFit.cover,
                                                  ),
                                                  onTap: () {
                                                    Navigator.push(
                                                        context,
                                                        MaterialPageRoute(
                                                            builder: (context) =>
                                                                TablePage()));
                                                  },
                                                )),
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
                                            20, 20, 0, 20),
                                        child: Column(
                                          children: [
                                            SizedBox(
                                                width: 140,
                                                child: GestureDetector(
                                                  child: Image(
                                                    image: AssetImage(
                                                        "assets/images/homepage/table.png"),
                                                    fit: BoxFit.cover,
                                                  ),
                                                  onTap: () {
                                                    Navigator.push(
                                                        context,
                                                        MaterialPageRoute(
                                                            builder: (context) =>
                                                                TablePage()));
                                                  },
                                                )),
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
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      // Bàn 5
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            20, 20, 0, 20),
                                        child: Column(
                                          children: [
                                            SizedBox(
                                                width: 140,
                                                child: GestureDetector(
                                                  child: Image(
                                                    image: AssetImage(
                                                        "assets/images/homepage/table.png"),
                                                    fit: BoxFit.cover,
                                                  ),
                                                  onTap: () {
                                                    Navigator.push(
                                                        context,
                                                        MaterialPageRoute(
                                                            builder: (context) =>
                                                                TablePage()));
                                                  },
                                                )),
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
                                                          "Bàn 5",
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

                                      // Bàn 6
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            20, 20, 0, 20),
                                        child: Column(
                                          children: [
                                            SizedBox(
                                                width: 140,
                                                child: GestureDetector(
                                                  child: Image(
                                                    image: AssetImage(
                                                        "assets/images/homepage/table.png"),
                                                    fit: BoxFit.cover,
                                                  ),
                                                  onTap: () {
                                                    Navigator.push(
                                                        context,
                                                        MaterialPageRoute(
                                                            builder: (context) =>
                                                                TablePage()));
                                                  },
                                                )),
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
                                                          "Bàn 6",
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
                                      // Bàn 7
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            20, 20, 0, 20),
                                        child: Column(
                                          children: [
                                            SizedBox(
                                                width: 140,
                                                child: GestureDetector(
                                                  child: Image(
                                                    image: AssetImage(
                                                        "assets/images/homepage/table.png"),
                                                    fit: BoxFit.cover,
                                                  ),
                                                  onTap: () {
                                                    Navigator.push(
                                                        context,
                                                        MaterialPageRoute(
                                                            builder: (context) =>
                                                                TablePage()));
                                                  },
                                                )),
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
                                                          "Bàn 7",
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

                                      // Bàn 8
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            20, 20, 0, 20),
                                        child: Column(
                                          children: [
                                            SizedBox(
                                                width: 140,
                                                child: GestureDetector(
                                                  child: Image(
                                                    image: AssetImage(
                                                        "assets/images/homepage/table.png"),
                                                    fit: BoxFit.cover,
                                                  ),
                                                  onTap: () {
                                                    Navigator.push(
                                                        context,
                                                        MaterialPageRoute(
                                                            builder: (context) =>
                                                                TablePage()));
                                                  },
                                                )),
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
                                                          "Bàn 8",
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
                ],
              ),
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
