import 'package:get/get.dart';
import 'package:web_scraper/web_scraper.dart';
// import 'package:flutter_simple_shopify/flutter_simple_shopify.dart';


class HornSoundsController extends GetxController{


  void ttest() async{
    final webScraper = WebScraper('https://hornblasters.com');
    if (await webScraper.loadWebPage('/pages/audio-samples')) {
      List<Map<String, dynamic>> elements = webScraper.getElement('a > button', ['']);
      print(elements);
    }
  }



}