import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get_x/view/get_conuter_example.dart';
import 'package:get_x/view/language.dart';
import 'package:get_x/view/list_view/auto_scrol_view.dart';
import 'package:get_x/view/page.dart';

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
                child: Text("Next Screen")),
            TextButton(
                onPressed: () {
                  Get.to(Language());
                },
                child: Text("Language Changer")),
            TextButton(
                onPressed: () {
                  Get.to(Counter());
                },
                child: Text("Conter Example")),
            TextButton(
                onPressed: () {
                  Get.to(AutoList());
                },
                child: Text("AutoList Example")),
            TextButton(
                onPressed: () {
                  Get.to(CoderPage());
                },
                child: Text("AutoList Example")),
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
