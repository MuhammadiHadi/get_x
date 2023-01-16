import 'dart:async';

import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  const Counter({Key? key}) : super(key: key);

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int x = 0;

  @override
  void initState() {
    Timer.periodic(Duration(seconds: 1), (timer) {
      x++;
      setState(() {});
    });
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print("counter");
    return Scaffold(
      body: Center(
          child: Text(
        "$x",
        style: TextStyle(fontSize: 25),
      )),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          x++;
          setState(() {});
        },
      ),
    );
  }
}
