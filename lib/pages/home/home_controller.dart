import 'package:get/get.dart';
import 'package:it_home/model/news.dart';
import 'package:it_home/services/home.dart';

class HomeController extends GetxController {
  List<NewsItem> newsList = [];

  @override
  void onReady() {
    super.onReady();
    getNewsList();
  }

  getNewsList() async {
    final res = await HomeRequest.getNews();
    newsList = res;
    update();
  }
}
