import 'package:it_home/model/news.dart';

import 'client_request.dart';
import 'core/request_transform.dart';

class HomeRequest {
  static Future<List<NewsItem>> getNews() async {
    final res = await ClientRequest.get('newslist/news', requestTransformer: NewsRequestTransformer.getInstance());
    // print('res: $res');

    return res.ok ? List<NewsItem>.from(res.data.map((item) => NewsItem.fromMap(item))) : [];
  }
}
