import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class pin_login extends StatefulWidget {
  const pin_login({super.key});

  @override
  State<pin_login> createState() => _pin_loginstate();
}

class _pin_loginstate extends State<pin_login> {
  // state variables
  String _number = "------";
  String r_number = "";

  Widget buildItem({
    required String number, //optional
    Color color = Colors.black,
    String? name,
    IconData? icon,
  }) {
    if (number.length == 1) {
      return Container(
        margin: const EdgeInsets.all(8.0),
        child: InkWell(
          onTap: () {
            setState(() {
              //_text = Random().nextInt(100).toString();
              if (r_number.length < 6) {
                r_number += number;
                _number = r_number;

                for (int i = r_number.length; i < 6; i++) {
                  _number += "_";
                }
              } else {
                _number = r_number;
              }
            });
          },
          child: Container(
            width: 60.0,
            height: 60.0,
            decoration: BoxDecoration(
                border: Border.all(
              color: Colors.grey,
            )),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  number,
                  style: GoogleFonts.notoSansThai(
                    color: color,
                    fontSize: 20.0,
                  ),
                ),
                Text(
                  name!,
                  style: GoogleFonts.notoSansThai(
                    color: color,
                    fontSize: 10.0,
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    } else {
      return Container(
        margin: EdgeInsets.only(right: 10.0,left: 10.0),
          child: InkWell(
        onTap: () {
          setState(() {
            if (number == "-2") {
              if (r_number.length < 7) {
                r_number = r_number.substring(0, r_number.length-1);
                _number = r_number;

                for (int i = r_number.length; i < 6; i++) {
                  _number += "_";
                }
              } else {
                _number = r_number;
              }
            } else {
              _number = "------";
              r_number = "";
            }
          });
        },
        child: Container( 
          width: 60.0,
            height: 60.0,
          child: Icon(icon),
        ),
      ));
    }
  }

  // Widget buildTextWithBackground({
  @override
  Widget build(BuildContext context) {
    var itemList1 = [
      buildItem(number: "1", name: "one"),
      buildItem(number: "2", name: "two"),
      buildItem(number: "3", name: "three"),
    ];
    var itemList2 = [
      buildItem(number: "4", name: "four"),
      buildItem(number: "5", name: "five"),
      buildItem(number: "6", name: "six"),
    ];
    var itemList3 = [
      buildItem(number: "7", name: "seven"),
      buildItem(number: "8", name: "eight"),
      buildItem(number: "9", name: "nine"),
    ];
    var itemList4 = [
      buildItem(icon: Icons.clear, number: "-1"),
      buildItem(number: "0", name: "zero"),
      buildItem(icon: Icons.backspace, number: "-2"),
    ];

    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 16.0),
        margin: const EdgeInsets.all(8.0),
        child: Column(
          // mainAxisAlignment : MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Icon(
                Icons.security,
                size: 55.0,
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              "PIN LOGIN",
              style: TextStyle(fontSize: 16.0),
            ),
            Expanded(child: Container()),
            Container(
              alignment: Alignment.center,
              child: Text(
                _number,
                style: GoogleFonts.kanit(fontSize: 40.0),
                selectionColor: Colors.blue,
              ),
            ),
            Expanded(child: Container()),
            Column(
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    //crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: itemList1),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                //crossAxisAlignment: CrossAxisAlignment.stretch,
                children: itemList2),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                //crossAxisAlignment: CrossAxisAlignment.stretch,
                children: itemList3),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              //crossAxisAlignment: CrossAxisAlignment.stretch,
              children: itemList4,
            ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
