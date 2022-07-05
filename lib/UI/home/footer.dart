// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hornblasters/UI/constants.dart';
import 'package:hornblasters/UX/home_controller.dart';

class Footer extends StatelessWidget {
  HomeController controller = Get.put(HomeController());

  Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              flex: 1,
              child: Container(),
            ),
            Expanded(
                flex: 10,
                child: Column(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        controller.follow_us();
                      },
                      style: ElevatedButton.styleFrom(
                          primary: P2,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 15),
                          onPrimary: P3,
                          shadowColor: S1,
                          elevation: 8,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          )),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: const [
                          Icon(
                            Icons.favorite,
                            color: P5,
                            size: 30,
                          ),
                          Text(
                            'FOLLOW US',
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              color: P5,
                              fontSize: 20.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 15,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        controller.call_toll_free();
                      },
                      style: ElevatedButton.styleFrom(
                          primary: P2,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 15),
                          onPrimary: P3,
                          shadowColor: S1,
                          elevation: 8,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          )),
                      child: const Text(
                        'Call HornBlasters',
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          color: P5,
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                  ],
                )),
            Expanded(
              flex: 1,
              child: Container(),
            ),
          ],
        ),
      ],
    );
  }
}
