import 'package:flutter/material.dart';
import 'package:flutter_application/src/resources/account/account_page.dart';
import 'package:flutter_application/src/resources/history_page.dart';
import 'package:flutter_application/src/resources/voucher_page.dart';

import 'home_page/home_page.dart';

Widget BottombarRestaurant(BuildContext context) {
  return Row(
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
                context, MaterialPageRoute(builder: (context) => HomePage()));
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
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => History()));
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
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Voucher()));
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
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => Account_Page()));
          },
        ),
      ),
    ],
  );
}
