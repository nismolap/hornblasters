// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hornblasters/UI/constants.dart';
import 'package:hornblasters/UX/webview_controller.dart';

class HeaderW extends StatelessWidget {
  WebviewController webview = Get.put(WebviewController());

  HeaderW({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            width: 55,
            height: 45,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: P5,
            ),
            child: IconButton(
              padding: EdgeInsets.zero,
              constraints: const BoxConstraints(),
              onPressed: () {
                Get.back();
              },
              icon : const Icon(Icons.arrow_back,color: P3,size: 35,),
            ),
          ),
          Text(
            webview.title.value,textAlign: TextAlign.center,
            style: const TextStyle(
              fontFamily: 'Montserrat',
              color: P5,
              fontSize: 20.0,
            ),
          ),
          Container(
            width: 55,
            height: 45,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: P5,
            ),
            child: IconButton(
              padding: EdgeInsets.zero,
              constraints: const BoxConstraints(),
              onPressed: () {
                webview.controller.reload();
              },
              icon : const Icon(Icons.replay,color: P3,size: 35,),
            ),
          ),
        ],
      ),
    );
  }
}
