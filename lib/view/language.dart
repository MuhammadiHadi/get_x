import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';

class Language extends StatefulWidget {
  const Language({Key? key}) : super(key: key);

  @override
  State<Language> createState() => _LanguageState();
}

class _LanguageState extends State<Language> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('title'.tr),
            SizedBox(
              height: 40,
            ),
            ListTile(
              title: Text('message'.tr),
              subtitle: Text('name'.tr),
            ),
            OutlinedButton(
                onPressed: () {
                  Get.updateLocale(Locale('en', 'US'));
                },
                child: Text("Eng;ish")),
            OutlinedButton(
                onPressed: () {
                  Get.updateLocale(Locale('ur', 'PK'));
                },
                child: Text("Urdu")),
          ],
        ),
      ),
    );
  }
}
