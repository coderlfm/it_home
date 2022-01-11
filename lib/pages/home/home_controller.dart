import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:it_home/model/news.dart';
import 'package:it_home/model/banner.dart';
import 'package:it_home/services/home.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class HomeController extends GetxController {
  List<NewsItem> newsList = []; // 新闻列表
  List<BannerItem> bannerList = []; // banner列表

  final RefreshController refreshController = RefreshController(initialRefresh: false); // 刷新控制器

  /// 下拉刷新
  void handleRefresh(BuildContext context) async {
    print('下拉');
    // personalNotes = await HomeRequest.getReCommend(currentTab);
    update();
    refreshController.refreshCompleted();
  }

  /// 上拉加载更多
  void handleLoading(BuildContext context) async {
    print('加载中');

    // await getData();
    refreshController.loadComplete();
    // return Future.delayed(Duration(seconds: 2), () => refreshController.loadComplete());

    /// TODO: 此处需要设置成已加载完毕
    // if (res > 0) {
    //   _refreshController.loadComplete();
    // } else {
    //   _refreshController.loadNoData();
    // }
  }

  @override
  void onReady() {
    super.onReady();
    getNewsList();
    getBanners();
  }

  getBanners() async {
    bannerList = await HomeRequest.getBanners();
    update();
  }

  // 获取新闻
  getNewsList() async {
    newsList = await HomeRequest.getNews();
    // print('res: $res');
    update();
  }
}
