import 'package:flutter_html/flutter_html.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import './detail_controller.dart';

class DetailPage extends GetView<DetailController> {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final newsId = int.parse(Get.parameters['newsId']!); // 新闻id
    final title = Get.arguments['title'] as String;
    controller.getDetail(newsId);

    print(Get.parameters['newsId']);

    return Scaffold(
      body: GetBuilder<DetailController>(
        init: DetailController(),
        builder: (_) {
          return SafeArea(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: _.detail != null
                    ? [
                        Container(
                          decoration: BoxDecoration(border: Border(left: BorderSide(width: 6, color: Colors.red[700]!))),
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          margin: EdgeInsets.symmetric(vertical: 10),
                          child: Text(
                            title,
                            style: Theme.of(context).textTheme.headline6!.copyWith(color: Colors.black, fontWeight: FontWeight.bold),
                          ),
                        ),
                        // 富文本
                        Html(data: _.detail!.detail),
                      ]
                    : [],
              ),
            ),
          );
        },
      ),
    );
  }
}
