// ignore_for_file: must_be_immutable, deprecated_member_use, invalid_use_of_protected_member

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hornblasters/UI/constants.dart';
import 'package:hornblasters/UX/home_controller.dart';
import 'package:hornblasters/UX/horn_sounds_controller.dart';
import 'package:hornblasters/UX/videos_pics_controller.dart';
import 'package:hornblasters/UX/webview_controller.dart';

class Buttons extends StatelessWidget {
  HomeController controller = Get.put(HomeController());
  WebviewController webview = Get.put(WebviewController());
  VideosPicsController pic = Get.put(VideosPicsController());
  HornSoundsController horn = Get.put(HornSoundsController());

  Buttons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            gradient: const LinearGradient(
                colors: [
                  P5,
                  P2,
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                stops: [0.7, 0.3]),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.5),
                spreadRadius: 0,
                blurRadius: 10,
                offset: const Offset(0, 6), // changes position of shadow
              ),
            ],
          ),
          child: ElevatedButton(
            onPressed: () {
              horn.title_links.value.clear();
              horn.images.value.clear();
              horn.audios.value.clear();
              horn.getdata();
              Get.toNamed('HornSounds');
            },
            style: ElevatedButton.styleFrom(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                primary: Colors.transparent,
                shadowColor: Colors.transparent,
                onPrimary: P2,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                )),
            child: Row(
              children: [
                Expanded(
                  flex: 7,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'HORN SOUNDS',
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          color: P2,
                          fontSize: 20.0,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                    flex: 3,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 25,
                        ),
                        const Icon(
                          Icons.notifications_active,
                          color: P5,
                          size: 40,
                        ),
                      ],
                    ))
              ],
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            gradient: const LinearGradient(
                colors: [
                  P5,
                  P2,
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                stops: [0.7, 0.3]),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.5),
                spreadRadius: 0,
                blurRadius: 10,
                offset: const Offset(0, 6), // changes position of shadow
              ),
            ],
          ),
          child: ElevatedButton(
            onPressed: () {
              Get.toNamed('VideosPics');
              pic.data.clear();
              pic.getdata();
            },
            style: ElevatedButton.styleFrom(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                primary: Colors.transparent,
                shadowColor: Colors.transparent,
                onPrimary: P2,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                )),
            child: Row(
              children: [
                Expanded(
                  flex: 7,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'VIDEOS & PICS',
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          color: P2,
                          fontSize: 20.0,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                    flex: 3,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 25,
                        ),
                        const Icon(
                          Icons.video_collection,
                          color: P5,
                          size: 40,
                        ),
                      ],
                    ))
              ],
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            gradient: const LinearGradient(
                colors: [
                  P5,
                  P2,
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                stops: [0.7, 0.3]),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.5),
                spreadRadius: 0,
                blurRadius: 10,
                offset: const Offset(0, 6), // changes position of shadow
              ),
            ],
          ),
          child: ElevatedButton(
            onPressed: () {
              webview.webview(controller.SHOP_NOW, 'SHOP NOW');
            },
            style: ElevatedButton.styleFrom(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                primary: Colors.transparent,
                shadowColor: Colors.transparent,
                onPrimary: P2,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                )),
            child: Row(
              children: [
                Expanded(
                  flex: 7,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'SHOP NOW',
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          color: P2,
                          fontSize: 20.0,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                    flex: 3,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 25,
                        ),
                        const Icon(
                          Icons.shopping_cart,
                          color: P5,
                          size: 40,
                        ),
                      ],
                    ))
              ],
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            gradient: const LinearGradient(
                colors: [
                  P5,
                  P2,
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                stops: [0.7, 0.3]),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.5),
                spreadRadius: 0,
                blurRadius: 10,
                offset: const Offset(0, 6), // changes position of shadow
              ),
            ],
          ),
          child: ElevatedButton(
            onPressed: () {
              webview.webview(controller.DEALER_INSTALLER_LOCATOR,
                  'DEALER / INSTALLER\nLOCATOR');
            },
            style: ElevatedButton.styleFrom(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                primary: Colors.transparent,
                shadowColor: Colors.transparent,
                onPrimary: P2,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                )),
            child: Row(
              children: [
                Expanded(
                  flex: 7,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'DEALER / INSTALLER\nLOCATOR',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          color: P2,
                          fontSize: 14.0,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                    flex: 3,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 25,
                        ),
                        const Icon(
                          Icons.location_on,
                          color: P5,
                          size: 40,
                        ),
                      ],
                    ))
              ],
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            gradient: const LinearGradient(
                colors: [
                  P5,
                  P2,
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                stops: [0.7, 0.3]),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.5),
                spreadRadius: 0,
                blurRadius: 10,
                offset: const Offset(0, 6), // changes position of shadow
              ),
            ],
          ),
          child: ElevatedButton(
            onPressed: () {
              webview.webview(controller.HELP_CENTER, 'HELP CENTER');
            },
            style: ElevatedButton.styleFrom(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                primary: Colors.transparent,
                shadowColor: Colors.transparent,
                onPrimary: P2,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                )),
            child: Row(
              children: [
                Expanded(
                  flex: 7,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'HELP CENTER',
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          color: P2,
                          fontSize: 20.0,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                    flex: 3,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 25,
                        ),
                        const Icon(
                          Icons.help,
                          color: P5,
                          size: 40,
                        ),
                      ],
                    ))
              ],
            ),
          ),
        ),
      ],
    );
  }
}
