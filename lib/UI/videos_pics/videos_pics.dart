// ignore_for_file: must_be_immutable, invalid_use_of_protected_member

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hornblasters/UI/constants.dart';
import 'package:hornblasters/UI/horn_sounds/header.dart';
import 'package:hornblasters/UX/videos_pics_controller.dart';

class VideosPics extends StatelessWidget {
  VideosPicsController controller = Get.put(VideosPicsController());

  VideosPics({Key? key}) : super(key: key);

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
              Expanded(
                  child: Column(
                children: [
                  controller.data.value.length == 0
                      ? Container(
                          height: 50,
                          width: 50,
                          child: CircularProgressIndicator())
                      : Expanded(
                          child: GridView.count(
                            crossAxisCount: 3,
                            childAspectRatio: (70 / 100),
                            children: List.generate(
                                controller.data.value.length, (i) {
                              return Container(
                                margin: const EdgeInsets.all(5),
                                child: Stack(
                                  children: [
                                    Column(
                                      children: [
                                        Expanded(flex: 65, child: Container()),
                                        Expanded(
                                          flex: 35,
                                          child: Container(
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.only(
                                                  bottomLeft:
                                                      Radius.circular(20),
                                                  bottomRight:
                                                      Radius.circular(20)),
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
                                            child: Center(
                                              child: Wrap(children: [
                                                Text(
                                                  '${controller.data.value[i]['title']}',
                                                  textAlign: TextAlign.center,
                                                  style: const TextStyle(
                                                    fontFamily: 'Montserrat',
                                                    color: P5,
                                                    fontSize: 18.0,
                                                  ),
                                                ),
                                              ]),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Expanded(
                                          flex: 70,
                                          child: Container(
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                                image: DecorationImage(
                                                  image: NetworkImage(controller
                                                                  .data[i]
                                                              ['type'] ==
                                                          'image'
                                                      ? controller.data[i]
                                                          ['uri']
                                                      : 'http://www.milhouses.com.eg/dar/imgs/video.jpg'),
                                                  fit: BoxFit.cover,
                                                ),
                                                color: P5),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                IconButton(
                                                  onPressed: () async {
                                                    if (controller.data.value[i]
                                                            ['type'] ==
                                                        'video') {
                                                      await controller.video(
                                                          controller.data
                                                              .value[i]['uri']);
                                                      controller.dialog(
                                                          controller.data
                                                              .value[i]['type'],
                                                          controller.data
                                                              .value[i]['url'],
                                                          i);
                                                    } else {
                                                      controller.dialog(
                                                          controller.data
                                                              .value[i]['type'],
                                                          controller.data
                                                              .value[i]['url'],
                                                          i);
                                                    }
                                                  },
                                                  padding: EdgeInsets.zero,
                                                  icon: Icon(
                                                    controller.data.value[i]
                                                                ['type'] ==
                                                            'video'
                                                        ? Icons.play_arrow
                                                        : Icons.search,
                                                    color: P2,
                                                    size: 55,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Expanded(flex: 30, child: Container())
                                      ],
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
