// ignore_for_file: must_be_immutable, invalid_use_of_protected_member

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hornblasters/UI/constants.dart';
import 'package:hornblasters/UI/horn_sounds/header.dart';
import 'package:hornblasters/UX/horn_sounds_controller.dart';
import 'package:hornblasters/UX/webview_controller.dart';

class HornSounds extends StatelessWidget {
  HornSoundsController controller = Get.put(HornSoundsController());
  WebviewController webview = Get.put(WebviewController());

  HornSounds({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        leading: Container(),
        backgroundColor: P3,
      ),
      body: Obx(
        () => Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  P3,
                  P1,
                ]),
          ),
          child: Column(
            children: [
              Container(
                height: 20,
              ),
              HeaderH(),
              controller.images.value.length == 0
                  ? Container(
                      height: 50, width: 50, child: CircularProgressIndicator())
                  : Expanded(
                      child: Column(
                      children: [
                        Expanded(
                          child: GridView.count(
                            crossAxisCount: 3,
                            childAspectRatio: (60 / 100),
                            children: List.generate(
                                controller.images.value.length, (i) {
                              final audioplayer = AudioPlayer();
                              bool isplaying = false;
                              return Container(
                                margin: const EdgeInsets.symmetric(
                                    horizontal: 5, vertical: 10),
                                child: Column(
                                  children: [
                                    Expanded(
                                      flex: 3,
                                      child: Container(
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(20),
                                                topRight: Radius.circular(20)),
                                            image: DecorationImage(
                                              image: NetworkImage(
                                                  '${controller.images.value[i]['attributes']['src']}'),
                                              fit: BoxFit.fill,
                                            ),
                                            color: P5),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 4,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Expanded(
                                            child: Container(
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    const BorderRadius.only(
                                                        bottomRight:
                                                            Radius.circular(20),
                                                        bottomLeft:
                                                            Radius.circular(
                                                                20)),
                                                color: P2,
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Colors.black
                                                        .withOpacity(0.5),
                                                    spreadRadius: 0,
                                                    blurRadius: 10,
                                                    offset: const Offset(0,
                                                        6), // changes position of shadow
                                                  ),
                                                ],
                                              ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Expanded(
                                                    child: Container(),
                                                    flex: 1,
                                                  ),
                                                  Expanded(
                                                    flex: 10,
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceEvenly,
                                                      children: [
                                                        Container(
                                                          height: 5,
                                                        ),
                                                        Text(
                                                          '${controller.title_links.value[i]['title']}',
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: TextStyle(
                                                            fontFamily:
                                                                'Montserrat',
                                                            color: P5,
                                                            fontSize: 9.0,
                                                          ),
                                                        ),
                                                        GetBuilder<
                                                            HornSoundsController>(
                                                          builder: (controller) =>
                                                              IconButton(
                                                                  onPressed:
                                                                      () async {
                                                                    if (isplaying) {
                                                                      isplaying =
                                                                          false;
                                                                      await audioplayer
                                                                          .pause();
                                                                      controller
                                                                          .update();
                                                                    } else {
                                                                      isplaying =
                                                                          true;
                                                                      await audioplayer.play(controller
                                                                          .audios
                                                                          .value[i]['attributes']['src']);
                                                                      controller
                                                                          .update();
                                                                    }
                                                                    audioplayer
                                                                        .onPlayerCompletion
                                                                        .listen(
                                                                            (event) {
                                                                      isplaying =
                                                                          false;
                                                                      controller
                                                                          .update();
                                                                    });
                                                                  },
                                                                  icon: Icon(
                                                                    isplaying ==
                                                                            false
                                                                        ? Icons
                                                                            .play_arrow
                                                                        : Icons
                                                                            .pause,
                                                                    color: P5,
                                                                    size: 30,
                                                                  )),
                                                        ),
                                                        Container(
                                                          width: 58,
                                                          height: 32,
                                                          margin:
                                                              const EdgeInsets
                                                                      .only(
                                                                  bottom: 5),
                                                          decoration:
                                                              BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10),
                                                            color: P5,
                                                          ),
                                                          child: TextButton(
                                                            onPressed: () {
                                                              webview.webview(
                                                                  controller
                                                                          .title_links
                                                                          .value[i]
                                                                      [
                                                                      'attributes']['href'],
                                                                  'SHOP NOW');
                                                            },
                                                            child: const Text(
                                                              'Shop',
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                              style: TextStyle(
                                                                fontFamily:
                                                                    'Montserrat',
                                                                color: P2,
                                                                fontSize: 13.0,
                                                              ),
                                                            ),
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                  Expanded(
                                                    child: Container(),
                                                    flex: 1,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            }),
                          ),
                        )
                      ],
                    ))
            ],
          ),
        ),
      ),
    );
  }
}
