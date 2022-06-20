// ignore_for_file: library_private_types_in_public_api

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hornblasters/UI/constants.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    initPlatformState();
    Timer(const Duration(seconds: 3), () async{
      Get.offNamed('/HomeScreen');
    });
  }


  Future<void> initPlatformState() async {
    OneSignal.shared.setLogLevel(OSLogLevel.verbose, OSLogLevel.none);
    OneSignal.shared
        .setNotificationOpenedHandler((OSNotificationOpenedResult result) {
      debugPrint('NOTIFICATION OPENED HANDLER CALLED WITH: $result');
    });

    OneSignal.shared.setNotificationWillShowInForegroundHandler(
            (OSNotificationReceivedEvent event) {

        });

    await OneSignal.shared.setAppId("88880d31-d75a-4b86-81c2-471ae6038938");
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                P3,
                P1,
              ]),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text('HB',style: TextStyle(
                      fontFamily: 'GaleanaCondensed',
                        fontSize: 184,
                        color: P5
                    ),)
                  ],
                ),
              ],
            ),),
            Expanded(child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 25),
                  child: const Text(
                    'Version 1.0',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: P5,
                      fontSize: 11.0,
                    ),
                  ),
                ),
              ],
            )),
          ],
        ),
      ),
    );
  }
}
