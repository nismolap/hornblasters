import 'package:flutter/material.dart';
import 'package:hornblasters/UI/constants.dart';
import 'package:hornblasters/UI/horn_sounds/header.dart';

class HornSounds extends StatelessWidget {
  const HornSounds({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        leading: Container(),
        backgroundColor: P3,
      ),
      body: Container(
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
                    childAspectRatio: (60 / 100),
                    children: List.generate(5, (i) {
                      return Container(
                        margin: const EdgeInsets.all(5),
                        child: Column(
                          children: [
                            Expanded(
                              flex: 2,
                              child: Container(
                                decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        topRight: Radius.circular(20)),
                                    color: P5),
                              ),
                            ),
                            Expanded(
                              flex: 3,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.only(
                                      bottomRight: Radius.circular(20),
                                      bottomLeft: Radius.circular(20)),
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
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Container(
                                          height: 7,
                                        ),
                                        const Text(
                                          'HORN SOUNDS',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontFamily: 'Montserrat',
                                            color: P5,
                                            fontSize: 11.0,
                                          ),
                                        ),
                                        IconButton(
                                            onPressed: () {},
                                            icon: const Icon(
                                              Icons.play_arrow,
                                              color: P5,
                                              size: 40,
                                            )),
                                        Container(
                                          width: 55,
                                          height: 45,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: P5,
                                          ),
                                          child: TextButton(
                                            onPressed: () {},
                                            child: const Text(
                                              'Shop',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontFamily: 'Montserrat',
                                                color: P2,
                                                fontSize: 13.0,
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
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
    );
  }
}
