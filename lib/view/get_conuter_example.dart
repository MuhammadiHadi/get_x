import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../get_conttroller/get_conuter.dart';
import '../get_conttroller/get_slider.dart';

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
  final SliderConttroller _conttroller = Get.put(SliderConttroller());
  double _value = 0;
  @override
  Widget build(BuildContext context) {
    print("counter");
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Obx(() {
            return Text(
              conttroller.Count.toString(),
              style: TextStyle(fontSize: 25),
            );
          }),
          Text("New Get Example"),
          Text("Slider Example"),
          Obx(() => Column(
                children: [
                  Text("${_conttroller.slider.toStringAsFixed(2)}"),
                  Slider(
                      max: 100,
                      value: _conttroller.slider.toDouble(),
                      onChanged: (val) {
                        _conttroller.Slider(val);
                      })
                ],
              ))
        ],
      )),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          conttroller.IncreaseCount();
        },
      ),
    );
  }
}
