import 'package:flutter/material.dart';

import 'package:get/get.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    List lang = [
      'English',
      'മലയാളം',
      'हिंदी',
    ];
    List local = [
      const Locale('en', 'US'),
      const Locale('mal', 'IN'),
      const Locale('hi', 'IN')
    ];
    return Scaffold(
      appBar: AppBar(actions: [
        TextButton(
            onPressed: () {
              Get.bottomSheet(BottomSheet(
                onClosing: () {},
                builder: (context) {
                  return SizedBox(
                    height: Get.height * 0.25,
                    child: ListView.builder(
                      itemCount: lang.length,
                      itemBuilder: (context, index) => GestureDetector(
                        onTap: () {
                          Get.updateLocale(local[index]);
                          Get.back();
                        },
                        child: ListTile(
                          title: Text(lang[index]),
                        ),
                      ),
                    ),
                  );
                },
              ));
            },
            child: Text(
              'Language'.tr,
              style: const TextStyle(color: Colors.black, fontSize: 20),
            ))
      ]),
      body: Center(
          child: ListView(children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'flutter'.tr,
                style: const TextStyle(fontSize: 35),
              ),
            ),
          ],
        ),
      ])),
    );
  }
}
