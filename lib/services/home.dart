import 'package:it_home/model/news.dart';
import 'package:it_home/services/banner.dart';

import 'client_request.dart';
import 'core/request_transform.dart';

class HomeRequest {
  // 获取轮播图
  static Future<List<BannerItem>> getBanners() async {
    final res = await ClientRequest.get('slide/index');
    print('banner: ${res.data}');

    return res.ok ? List<BannerItem>.from(res.data.map((item) => BannerItem.fromMap(item))) : [];
  }

  // 获取新闻列表
  static Future<List<NewsItem>> getNews() async {
    final res = await ClientRequest.get('newslist/news', requestTransformer: NewsRequestTransformer.getInstance());
    print('res: ${res.data}');

    return res.ok ? List<NewsItem>.from(res.data.map((item) => NewsItem.fromMap(item))) : [];
  }
}
