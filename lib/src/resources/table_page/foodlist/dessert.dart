import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' show jsonDecode, jsonEncode;
import 'package:flutter_application/src/config.dart';

class DessertList extends StatefulWidget {
  const DessertList({super.key});

  @override
  State<DessertList> createState() => _DessertListState();
}

class _DessertListState extends State<DessertList> {
  List? dessert;
  Future<String> getDataDessert() async {
    var response = await http
        .get(Uri.parse(getDessert), headers: {"Accept": "application/json"});

    setState(() {
      dessert = jsonDecode(response.body);
    });

    return "Success!";
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    this.getDataDessert();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 280,
      child: new ListView.builder(
        itemCount: dessert == null ? 0 : dessert?.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return new Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                    width: 140,
                    height: 180,
                    decoration: BoxDecoration(
                      borderRadius: new BorderRadius.circular(12),
                      color: Colors.transparent,
                      border: Border.all(
                        width: 1,
                      ),
                    ),
                    child: Image.network(
                      dessert![index]["image"],
                      fit: BoxFit.contain,
                    )),
                Text(
                  dessert![index]["price"] + " VNĐ",
                  style: TextStyle(fontSize: 15, color: Colors.red),
                ),
                Text(
                  dessert![index]["name"],
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(
                  width: 130,
                  height: 30,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 219, 82, 82),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.library_add_outlined,
                          size: 19,
                        ),
                        Text(
                          "Thêm vào bàn",
                          style: TextStyle(fontSize: 12),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}