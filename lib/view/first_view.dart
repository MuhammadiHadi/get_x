import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FirstView extends StatefulWidget {
  const FirstView({Key? key}) : super(key: key);

  @override
  State<FirstView> createState() => _FirstViewState();
}

class _FirstViewState extends State<FirstView> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 1;
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
            onPressed: () {
              Get.back();
            },
            child: Text("Go back"),
          ),
          Text("Hello word"),
          Container(
            height: 100,
            color: Colors.green,
            width: double.infinity,
            child: Center(child: Text("text")),
          ),
          Container(
            height: Get.height * 0.2,
            color: Colors.red,
            width: double.infinity,
            child: Center(child: Text("Get Height")),
          ),
          Container(
            height: height * 0.1,
            color: Colors.brown,
            width: double.infinity,
            child: Center(child: Text("Media Query height")),
          ),
        ],
      )),
    );
  }
}
