import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hornblasters/UI/home/home.dart';

import 'UI/constants.dart';
import 'UI/splashscreen/splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: [
        GetPage(name: '/SplashScreen', page: () => const SplashScreen()),
        GetPage(name: '/HomeScreen', page: () => const HomeScreen()),
      ],
      debugShowCheckedModeBanner: false,
      title: 'HornBlasters',
      home: const SplashScreen(),
    );
  }
}

