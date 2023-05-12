import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_application/src/resources/bottombar.dart';
import 'package:flutter_application/src/resources/table_page/table_page.dart';
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

class _HomePageState extends State<HomePage> {
  late String email;
  // late String name;
  // late Int phone;
  List? data;
  Future<String> getData() async {
    var response = await http
        .get(Uri.parse(getTable), headers: {"Accept": "application/json"});

    setState(() {
      data = jsonDecode(response.body);
    });

    print(data![1]["title"]);

    return "Success!";
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Map<String, dynamic> jwtDecodedToken = JwtDecoder.decode(widget.token);
    email = jwtDecodedToken['email'];
    // name = jwtDecodedToken['name'];
    // phone = jwtDecodedToken['phonenumber'];

    this.getData();
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
                  // SizedBox(
                  //   height: 1000,
                  //   child: new ListView.builder(
                  //     itemCount: data == null ? 0 : data?.length,
                  //     itemBuilder: (BuildContext context, int index) {
                  //       return new Card(
                  //         child: new Text(data![index]["title"]),
                  //       );
                  //     },
                  //   ),
                  // ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                    child: Container(
                      width: double.infinity,
                      height: 700,
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
                              SizedBox(
                                height: 600,
                                child: GridView.builder(
                                  gridDelegate:
                                      const SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 2,
                                  ),
                                  itemCount: data == null ? 0 : data?.length,
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    // return new Card(
                                    //   child: new Text(data![index]["title"]),
                                    // );
                                    status() {
                                      if (data![index]['status'] == false) {
                                        return Color.fromARGB(255, 10, 255, 10);
                                      }
                                      return Color.fromARGB(255, 252, 2, 2);
                                    }

                                    return new Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          20, 0, 0, 0),
                                      child: Column(
                                        children: [
                                          SizedBox(
                                              width: 160,
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
                                            padding: const EdgeInsets.fromLTRB(
                                                0, 0, 20, 0),
                                            child: Container(
                                                width: 150,
                                                height: 30,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(30)),
                                                  color: Color.fromARGB(
                                                      255, 221, 163, 163),
                                                ),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Padding(
                                                      padding: const EdgeInsets
                                                              .fromLTRB(
                                                          15, 0, 0, 0),
                                                      child: Text(
                                                        data![index]["title"],
                                                        style: TextStyle(
                                                            fontSize: 15),
                                                      ),
                                                    ),
                                                    Icon(
                                                      Icons.groups,
                                                    ),
                                                    Padding(
                                                      padding: const EdgeInsets
                                                              .fromLTRB(
                                                          0, 0, 15, 0),
                                                      child: Container(
                                                        width: 10,
                                                        height: 10,
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius.all(
                                                                  Radius
                                                                      .circular(
                                                                          30)),
                                                          // color: Color.fromARGB(
                                                          //     255, 10, 255, 10),
                                                          color: status(),
                                                        ),
                                                      ),
                                                    )
                                                  ],
                                                )),
                                          )
                                        ],
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ],
                          )),
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
