import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hornblasters/UI/home/home.dart';
import 'package:hornblasters/UI/horn_sounds/horn_sounds.dart';
import 'package:hornblasters/UI/videos_pics/videos_pics.dart';
import 'package:hornblasters/UI/webview/webview.dart';
import 'UI/splashscreen/splashscreen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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
        GetPage(name: '/WebView', page: () => WebViewP()),
        GetPage(name: '/HornSounds', page: () => HornSounds()),
        GetPage(name: '/VideosPics', page: () => VideosPics()),
      ],
      debugShowCheckedModeBanner: false,
      title: 'HornBlasters',
      home: const SplashScreen(),
    );
  }
}
