import 'package:it_home/model/detail.dart';
import 'package:it_home/services/client_request.dart';

class DetailRequest {
  // 获取详情
  static Future<DetailItem> getDetail(int newsId) async {
    final res = await ClientRequest.get('https://api.ithome.com/json/newscontent/$newsId');
    print('detail: ${res.data}');
    return DetailItem.fromMap(res.data);
  }
}
