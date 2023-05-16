import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:localization_sample/home.dart';

import 'local_strings.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      translations: LocalString(),
      locale: const Locale('en', 'US'),
      home: const Home(),
    );
  }
}
