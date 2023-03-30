import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application/src/resources/home_page.dart';

class TablePage extends StatefulWidget {
  const TablePage({super.key});

  @override
  _TablePageState createState() => _TablePageState();
}

double _value = 20;
int _window = 0;

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
                            padding: const EdgeInsets.fromLTRB(0, 10, 80, 10),
                            child: CircleAvatar(
                              backgroundImage:
                                  AssetImage("assets/images/avatar.jpg"),
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
                    thumbColor: Color.fromARGB(255, 243, 113, 113),
                    onChanged: (value) {
                      setState(() {
                        _value = value;
                      });
                    },
                    divisions: 20,
                    label: "Bug",
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                    child: Text(
                      "Loại Bàn",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        children: [
                          Radio(
                            value: 1,
                            groupValue: _window,
                            onChanged: (Value) {},
                          ),
                          Text(
                            "Gần cửa sổ",
                            style: TextStyle(
                                fontSize: 17,
                                color: Color.fromARGB(199, 82, 77, 77)),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Radio(
                            value: 1,
                            groupValue: _window,
                            onChanged: (Value) {},
                          ),
                          Text(
                            "Ban công",
                            style: TextStyle(
                                fontSize: 17,
                                color: Color.fromARGB(199, 82, 77, 77)),
                          )
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(35, 0, 38, 0),
                        child: Row(
                          children: [
                            Radio(
                              value: 1,
                              groupValue: _window,
                              onChanged: (Value) {},
                            ),
                            Text(
                              "Gần quầy buffe",
                              style: TextStyle(
                                  fontSize: 17,
                                  color: Color.fromARGB(199, 82, 77, 77)),
                            )
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Radio(
                            value: 1,
                            groupValue: _window,
                            onChanged: (Value) {},
                          ),
                          Text(
                            "Ngay giữa",
                            style: TextStyle(
                                fontSize: 17,
                                color: Color.fromARGB(199, 82, 77, 77)),
                          )
                        ],
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                    child: Text(
                      "Thức Ăn Chính",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  new Container(
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
                                  SizedBox(
                                    width: 130,
                                    height: 30,
                                    child: ElevatedButton(
                                      onPressed: () {},
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor:
                                            Color.fromARGB(255, 219, 82, 82),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10)),
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
                                        "assets/images/detail/food/lauthai.png",
                                        fit: BoxFit.contain,
                                      )),
                                  Text(
                                    "250.000 VNĐ",
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.red),
                                  ),
                                  Text(
                                    "Lẩu Thái",
                                    style: TextStyle(fontSize: 20),
                                  ),
                                  SizedBox(
                                    width: 130,
                                    height: 30,
                                    child: ElevatedButton(
                                      onPressed: () {},
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor:
                                            Color.fromARGB(255, 219, 82, 82),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10)),
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
                                        "assets/images/detail/food/laubo.png",
                                        fit: BoxFit.contain,
                                      )),
                                  Text(
                                    "250.000 VNĐ",
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.red),
                                  ),
                                  Text(
                                    "Lẩu Bò",
                                    style: TextStyle(fontSize: 20),
                                  ),
                                  SizedBox(
                                    width: 130,
                                    height: 30,
                                    child: ElevatedButton(
                                      onPressed: () {},
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor:
                                            Color.fromARGB(255, 219, 82, 82),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10)),
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
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                    child: Text(
                      "Nước Uống",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  new Container(
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
                                        "assets/images/detail/drink/coca.png",
                                        fit: BoxFit.contain,
                                      )),
                                  Text(
                                    "49.000 VNĐ",
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.red),
                                  ),
                                  Text(
                                    "CoCa Cola",
                                    style: TextStyle(fontSize: 20),
                                  ),
                                  SizedBox(
                                    width: 130,
                                    height: 30,
                                    child: ElevatedButton(
                                      onPressed: () {},
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor:
                                            Color.fromARGB(255, 219, 82, 82),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10)),
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
                                    "CockTail",
                                    style: TextStyle(fontSize: 20),
                                  ),
                                  SizedBox(
                                    width: 130,
                                    height: 30,
                                    child: ElevatedButton(
                                      onPressed: () {},
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor:
                                            Color.fromARGB(255, 219, 82, 82),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10)),
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
                                        "assets/images/detail/drink/beer.png",
                                        fit: BoxFit.contain,
                                      )),
                                  Text(
                                    "49.000 VNĐ",
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.red),
                                  ),
                                  Text(
                                    "Bia",
                                    style: TextStyle(fontSize: 20),
                                  ),
                                  SizedBox(
                                    width: 130,
                                    height: 30,
                                    child: ElevatedButton(
                                      onPressed: () {},
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor:
                                            Color.fromARGB(255, 219, 82, 82),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10)),
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
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                    child: Text(
                      "Món Tráng Miệng",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  new Container(
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
                                        "assets/images/detail/dessert/kem.png",
                                        fit: BoxFit.contain,
                                      )),
                                  Text(
                                    "79.000 VNĐ",
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.red),
                                  ),
                                  Text(
                                    "Tiramisu",
                                    style: TextStyle(fontSize: 20),
                                  ),
                                  SizedBox(
                                    width: 130,
                                    height: 30,
                                    child: ElevatedButton(
                                      onPressed: () {},
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor:
                                            Color.fromARGB(255, 219, 82, 82),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10)),
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
                                  SizedBox(
                                    width: 130,
                                    height: 30,
                                    child: ElevatedButton(
                                      onPressed: () {},
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor:
                                            Color.fromARGB(255, 219, 82, 82),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10)),
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
                                        "assets/images/detail/dessert/sweat.png",
                                        fit: BoxFit.contain,
                                      )),
                                  Text(
                                    "89.000 VNĐ",
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.red),
                                  ),
                                  Text(
                                    "Bánh",
                                    style: TextStyle(fontSize: 20),
                                  ),
                                  SizedBox(
                                    width: 130,
                                    height: 30,
                                    child: ElevatedButton(
                                      onPressed: () {},
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor:
                                            Color.fromARGB(255, 219, 82, 82),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10)),
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
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 10, 0, 20),
                    child: Center(
                      child: SizedBox(
                        width: 250,
                        height: 50,
                        child: ElevatedButton(
                            onPressed: () {},
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
