// ignore_for_file: library_private_types_in_public_api

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hornblasters/UI/constants.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  // void initState() {
  //   super.initState();
  //
  //   Timer(Duration(seconds: 4), () async{
  //     Get.offNamed('/HomeScreen');
  //     mydatabase.getisversion();
  //   });
  // }

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
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(50),
                ),
                Image.asset(
                  "assets/images/logo.png",
                  height: 174.0,
                  width: 300.0,
                ),
                const Text(
                  "Don't Blow Your Temper",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    color: P5,
                    fontSize: 30.0,
                  ),
                ),
                Container(height: 10,),
                const Text(
                  'Blow Your Horns!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    color: P5,
                    fontSize: 22.0,
                  ),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 200),
              child: const Text(
                'Version 1.0',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: P5,
                  fontSize: 11.0,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
