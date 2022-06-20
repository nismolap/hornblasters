import 'package:get/get.dart';
import 'package:web_scraper/web_scraper.dart';

class HornSoundsController extends GetxController {
  var images = [].obs;

  var audios = [].obs;

  var title_links = [].obs;

  void getdata() async {
    final webScraper = WebScraper('https://hornblasters.com');
    if (await webScraper.loadWebPage('/pages/audio-samples')) {
      List<Map<String, dynamic>> elements = webScraper.getElement(
          'div.shg-row > div > div > div > center > audio > source', ['src']);
      List<Map<String, dynamic>> elements2 = webScraper
          .getElement('div.shg-row > div > div > div > a > img', ['src']);
      List<Map<String, dynamic>> elements3 = webScraper
          .getElement('div.shg-row > div > div > div > p > a', ['href']);
      audios.value = elements;
      images.value = elements2;
      title_links.value = elements3;
    }
  }
}
