import 'package:flutter/material.dart';
class Screen_two extends StatefulWidget {
  const Screen_two({super.key});

  @override
  State<Screen_two> createState() => _Screen_twoState();
}

class _Screen_twoState extends State<Screen_two> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Hello from screen Two",
            style: TextStyle(fontSize: 30),
          ),
          ElevatedButton(
              onPressed: () {},
              child: Text(
                "Go Back To The Home Page",
                style: TextStyle(fontSize: 25),
              ))
        ],
      )));
  }
}