import 'package:get/get.dart';
import 'package:it_home/model/detail.dart';
import 'package:it_home/services/detail.dart';

class DetailController extends GetxController {
  DetailItem? detail;

  getDetail(int newsId) async {
    final res = await DetailRequest.getDetail(newsId);

    print('detail res: $res');
    detail = res;

    update();
  }
}
