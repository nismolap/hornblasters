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
      body: Obx ( () => Container(
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
                      Expanded(
                        child: GridView.count(
                          crossAxisCount: 3,
                          childAspectRatio: (70 / 100),
                          children: List.generate(controller.data.value.length, (i) {
                            return

                                Container(
                                  margin: const EdgeInsets.all(5),
                                  child: Stack(
                                    children: [

                                      Column(
                                        children: [
                                          Expanded(flex: 65,child: Container()),
                                          Expanded(
                                            flex: 35,
                                            child: Container(
                                              decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
                                                  color: P2,
                                                            boxShadow: [
                                                              BoxShadow(
                                                                color: Colors.black.withOpacity(0.5),
                                                                spreadRadius: 0,
                                                                blurRadius: 10,
                                                                offset: const Offset(
                                                                    0, 6), // changes position of shadow
                                                              ),
                                                            ],
                                              ),
                                              child: Center(
                                                child: Wrap(
                                                  children:[ Text('${controller.data.value[i]['title']}',textAlign: TextAlign.center,
                                                    style: const TextStyle(
                                                      fontFamily: 'Montserrat',
                                                      color: P5,
                                                      fontSize: 18.0,
                                                    ),
                                                  ),]
                                                ),
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
                                                  borderRadius: BorderRadius.circular(20),
                                                  image: DecorationImage(
                                                    image: NetworkImage(controller.data[i]['uri']),
                                                    fit: BoxFit.cover,
                                                  ),
                                                  color: P5
                                              ),
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: [
                                                  IconButton(
                                                    onPressed: () async{
                                                      if(controller.data.value[i]['type'] == 'video'){
                                                        await controller.video(controller.data.value[i]['uri']);
                                                        controller.dialog(controller.data.value[i]['type'] , controller.data.value[i]['url'] ,i);
                                                      }else{
                                                        controller.dialog(controller.data.value[i]['type'] , controller.data.value[i]['url'],i);
                                                      }
                                                      },
                                                    padding: EdgeInsets.zero,
                                                    icon: Icon(controller.data.value[i]['type'] == 'video' ? Icons.play_arrow : Icons.search,color: P2,size: 55,),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Expanded(flex: 30,child: Container())
                                        ],
                                      ),
                                    ],
                                  ),
                                );





                            //   Container(
                            //   margin: const EdgeInsets.all(5),
                            //   child: Column(
                            //     children: [
                            //       Expanded(
                            //         flex: 2,
                            //         child: Container(
                            //           decoration: const BoxDecoration(
                            //               borderRadius: BorderRadius.only(
                            //                   topLeft: Radius.circular(20),
                            //                   topRight: Radius.circular(20)),
                            //               color: P5),
                            //         ),
                            //       ),
                            //       Expanded(
                            //         flex: 3,
                            //         child: Container(
                            //           decoration: BoxDecoration(
                            //             borderRadius: const BorderRadius.only(
                            //                 bottomRight: Radius.circular(20),
                            //                 bottomLeft: Radius.circular(20)),
                            //             color: P2,
                            //             boxShadow: [
                            //               BoxShadow(
                            //                 color: Colors.black.withOpacity(0.5),
                            //                 spreadRadius: 0,
                            //                 blurRadius: 10,
                            //                 offset: const Offset(
                            //                     0, 6), // changes position of shadow
                            //               ),
                            //             ],
                            //           ),
                            //           child: Row(
                            //             mainAxisAlignment: MainAxisAlignment.center,
                            //             children: [
                            //               Column(
                            //                 mainAxisAlignment:
                            //                 MainAxisAlignment.spaceAround,
                            //                 children: [
                            //                   Container(
                            //                     height: 5,
                            //                   ),
                            //                   const Text(
                            //                     'HORN SOUNDS',
                            //                     textAlign: TextAlign.center,
                            //                     style: TextStyle(
                            //                       fontFamily: 'Montserrat',
                            //                       color: P5,
                            //                       fontSize: 11.0,
                            //                     ),
                            //                   ),
                            //                   IconButton(
                            //                       onPressed: () {},
                            //                       icon: const Icon(
                            //                         Icons.play_arrow,
                            //                         color: P5,
                            //                         size: 40,
                            //                       )),
                            //                   Container(
                            //                     width: 62,
                            //                     height: 35,
                            //                     margin:
                            //                     const EdgeInsets.only(bottom: 5),
                            //                     decoration: BoxDecoration(
                            //                       borderRadius:
                            //                       BorderRadius.circular(10),
                            //                       color: P5,
                            //                     ),
                            //                     child: TextButton(
                            //                       onPressed: () {},
                            //                       child: const Text(
                            //                         'Shop',
                            //                         textAlign: TextAlign.center,
                            //                         style: TextStyle(
                            //                           fontFamily: 'Montserrat',
                            //                           color: P2,
                            //                           fontSize: 13.0,
                            //                         ),
                            //                       ),
                            //                     ),
                            //                   )
                            //                 ],
                            //               ),
                            //             ],
                            //           ),
                            //         ),
                            //       ),
                            //     ],
                            //   ),
                            // );
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
