import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../get_conttroller/get_conuter.dart';

class Counter extends StatefulWidget {
  const Counter({Key? key}) : super(key: key);

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  @override
  void initState() {
    // Timer.periodic(Duration(seconds: 1), (timer) {
    //   x++;
    //   setState(() {});
    // });
    // TODO: implement initState
    super.initState();
  }

  final CounterConttroller conttroller = Get.put(CounterConttroller());

  @override
  Widget build(BuildContext context) {
    print("counter");
    return Scaffold(
      body: Center(child: Obx(() {
        return Text(
          conttroller.Count.toString(),
          style: TextStyle(fontSize: 25),
        );
      })),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          conttroller.IncreaseCount();
        },
      ),
    );
  }
}
