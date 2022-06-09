import 'package:flutter/material.dart';
import 'package:hornblasters/UI/constants.dart';
import 'package:hornblasters/UI/header.dart';
import 'package:hornblasters/UI/home/buttons.dart';
import 'package:hornblasters/UI/home/footer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

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
            const Header(),
            Expanded(
                child: Column(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Expanded(flex: 2, child: Container()),
                      Expanded(
                          flex: 9,
                          child: Column(
                            children: [
                              Expanded(flex: 6, child: Buttons()),
                              Expanded(flex: 2, child: Footer()),
                            ],
                          )),
                      Expanded(flex: 2, child: Container()),
                    ],
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
