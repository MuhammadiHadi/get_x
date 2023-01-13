import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'first_view.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Hello Word",
            ),
            SizedBox(
              height: 30,
            ),
            MaterialButton(
                minWidth: 200,
                color: Colors.cyan,
                child: Text("Show Alrt"),
                onPressed: () {
                  Get.defaultDialog(
                      title: "Hello Meer",
                      middleText: "stating Getx state management",
                      onConfirm: () {
                        Navigator.pop(context);
                      },
                      onCancel: () {
                        Navigator.pop(context);
                      });
                }),
            MaterialButton(
                minWidth: 200,
                color: Colors.cyan,
                child: Text("Show bottom shet"),
                onPressed: () {
                  Get.bottomSheet(Container(
                    height: 300,
                    width: double.infinity,
                    color: Colors.white,
                    child: Column(
                      children: [
                        Card(
                          child: ListTile(
                            title: Text("light theme"),
                            onTap: () {
                              Get.changeTheme(ThemeData.light());
                            },
                          ),
                        ),
                        Card(
                          child: ListTile(
                            title: Text("dark theme"),
                            onTap: () {
                              Get.changeTheme(ThemeData.dark());
                            },
                          ),
                        ),
                      ],
                    ),
                  ));
                }),
            TextButton(
                onPressed: () {
                  Get.to(FirstView());
                },
                child: Text("Next Screen"))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Get.snackbar("Meer Hadi", "Starting of New GetX State management",
              backgroundColor: Colors.black,
              colorText: Colors.white,
              snackPosition: SnackPosition.BOTTOM);
        },
      ),
    );
  }
}
