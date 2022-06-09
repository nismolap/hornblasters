// ignore_for_file: depend_on_referenced_packages


import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hornblasters/UI/constants.dart';
import 'package:hornblasters/UI/webview/header.dart';
import 'package:hornblasters/UX/webview_controller.dart';
import 'package:webview_flutter/webview_flutter.dart';


class WebViewP extends StatefulWidget {


  const WebViewP({Key? key}) : super(key: key);

  @override
  State<WebViewP> createState() => _WebViewPState();
}

class _WebViewPState extends State<WebViewP> {
  WebviewController webview = Get.put(WebviewController());

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
            HeaderW(),
            Expanded(
                child: Column(
                  children: [
                    Expanded(
                      child: WebView(
                        javascriptMode: JavascriptMode.unrestricted,
                        initialUrl: webview.url.value,
                        onWebViewCreated: (WebViewController webViewController) {
                          webview.controller = webViewController;
                        },
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

