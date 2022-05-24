import 'package:flutter/material.dart';
import 'package:hornblasters/UI/constants.dart';
import 'package:hornblasters/UI/header.dart';

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
            Container(height: 20,),
            const Header(),
            Row(
              children: [
                Expanded(flex:1,child: Container()),
                Expanded(flex:10,child: Column(
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
                  ],
                )),
                Expanded(flex:1,child: Container()),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
