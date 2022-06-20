// ignore_for_file: depend_on_referenced_packages

import 'package:get/get.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebviewController extends GetxController {
  final url = ''.obs;

  final title = ''.obs;

  late WebViewController controller;

  void webview(uri, titl) {
    url.value = uri;
    title.value = titl;
    Get.toNamed('WebView');
  }
}
