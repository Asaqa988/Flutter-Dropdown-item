import 'dart:math';

import 'package:flutter/material.dart';
import 'package:newappp/main.dart';

class Screen_one extends StatefulWidget {
  const Screen_one({super.key});

  @override
  State<Screen_one> createState() => _Screen_oneState();
}

class _Screen_oneState extends State<Screen_one> {
  List myitems = ["dell", "toshiba", "hp", "sony"];
  String selctedItem = "hp";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Hello from screen one",
            style: TextStyle(fontSize: 30),
          ),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  Navigator.pop(context, MaterialPageRoute(
                    builder: (context) {
                      return MyApp();
                    },
                  ));
                });
              },
              child: Text(
                "Go Back To The Home Page",
                style: TextStyle(fontSize: 25),
              )),
          DropdownButton(
              value: selctedItem,
              items: myitems
                  .map((e) => DropdownMenuItem(value: e, child: Text("${e}")))
                  .toList(),
              onChanged: ((val) {
                setState(() {
                  selctedItem=val.toString();
                });
              }))
        ],
      )),
    );
  }
}
