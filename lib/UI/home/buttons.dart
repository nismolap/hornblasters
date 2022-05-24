// ignore_for_file: must_be_immutable, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hornblasters/UI/constants.dart';
import 'package:hornblasters/UX/home_controller.dart';
import 'package:url_launcher/url_launcher.dart';

class Buttons extends StatelessWidget {
  HomeController controller = Get.put(HomeController());
  Buttons({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Row(
          children: [
            Expanded(child: ElevatedButton(
              onPressed: (){},
              style: ElevatedButton.styleFrom(
                primary : P1,
                padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                onPrimary: P3,
                shadowColor: S1,
                elevation: 8,
              ),
              child: const Text('HORN SOUNDS',style: TextStyle(
                  fontStyle: FontStyle.italic,
                  color: P5,
                  fontSize: 30.0,
                  fontWeight: FontWeight.w800
              ),),
            )),
          ],
        ),
        Row(
          children: [
            Expanded(child: ElevatedButton(
              onPressed: (){},
              style: ElevatedButton.styleFrom(
                primary : P1,
                padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                onPrimary: P3,
                shadowColor: S1,
                elevation: 8,
              ),
              child: const Text('VIDEOS & PICS',style: TextStyle(
                  fontStyle: FontStyle.italic,
                  color: P5,
                  fontSize: 30.0,
                  fontWeight: FontWeight.w800
              ),),
            )),
          ],
        ),
        Row(
          children: [
            Expanded(child: ElevatedButton(
              onPressed: (){
                launch(controller.SHOP_NOW);
              },
              style: ElevatedButton.styleFrom(
                primary : P1,
                padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                onPrimary: P3,
                shadowColor: S1,
                elevation: 8,
              ),
              child: const Text('SHOP NOW',style: TextStyle(
                  fontStyle: FontStyle.italic,
                  color: P5,
                  fontSize: 30.0,
                  fontWeight: FontWeight.w800
              ),),
            )),
          ],
        ),
        Row(
          children: [
            Expanded(child: ElevatedButton(
              onPressed: (){
                launch(controller.DEALER_INSTALLER_LOCATOR);
              },
              style: ElevatedButton.styleFrom(
                primary : P1,
                padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                onPrimary: P3,
                shadowColor: S1,
                elevation: 8,
              ),
              child: const Text('DEALER / INSTALLER LOCATOR',style: TextStyle(
                  fontStyle: FontStyle.italic,
                  color: P5,
                  fontSize: 25.0,
                  fontWeight: FontWeight.w800
              ),),
            )),
          ],
        ),
        Row(
          children: [
            Expanded(child: ElevatedButton(
              onPressed: (){
                launch(controller.HELP_CENTER);
              },
              style: ElevatedButton.styleFrom(
                primary : P1,
                padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                onPrimary: P3,
                shadowColor: S1,
                elevation: 8,
              ),
              child: const Text('HELP CENTER',style: TextStyle(
                  fontStyle: FontStyle.italic,
                  color: P5,
                  fontSize: 30.0,
                  fontWeight: FontWeight.w800
              ),),
            )),
          ],
        ),
      ],
    );
  }
}
