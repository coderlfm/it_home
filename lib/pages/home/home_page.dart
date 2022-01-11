import 'package:carousel_slider/carousel_slider.dart';
import 'package:date_format/date_format.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:it_home/extensions/int.dart';
import 'package:it_home/model/news.dart';
import 'package:it_home/widgets/appbar/appbar.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import './home_controller.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<HomeController>();

    // print('1111');

    return Scaffold(
      appBar: buildAppBar(context, leading: Text('it 之家'), trailing: Icon(Icons.add)),
      body: SafeArea(
        child: SingleChildScrollView(
          child: GetBuilder<HomeController>(
            init: HomeController(),
            builder: (_) {
              return Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CarouselSlider(
                    options: CarouselOptions(viewportFraction: 1, aspectRatio: .8, autoPlay: true, height: 150),
                    items: List.generate(
                      _.bannerList.length,
                      (index) => ClipRRect(borderRadius: BorderRadius.circular(5), child: Image.network(_.bannerList[index].image)),
                    ),
                  ),
                  Column(
                    children: List.generate(_.newsList.length, (index) {
                      return NewsItemWidget(_.newsList[index], key: ValueKey(controller.newsList[index].newsid));
                    }),
                  )
                ],
              );
            },
          ),
        ),
      ),
    );
  }

  Widget buildFooter(BuildContext context, LoadStatus? mode) {
    Widget body;
    if (mode == LoadStatus.idle) {
      body = Text("上拉加载");
    } else if (mode == LoadStatus.loading) {
      body = CupertinoActivityIndicator();
    } else if (mode == LoadStatus.failed) {
      body = Text("加载失败！点击重试！");
    } else if (mode == LoadStatus.canLoading) {
      body = Text("松手,加载更多!");
    } else {
      body = Text("没有更多数据了!");
    }
    return Container(
      height: 55.0,
      child: Center(child: body),
    );
  }
}

class NewsItemWidget extends StatelessWidget {
  final NewsItem newsItem;

  const NewsItemWidget(this.newsItem, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final date = newsItem.postdate;
    // String timestamp =
    //     "${date.year.toString()}-${date.month.toString().padLeft(2, '0')}-${date.day.toString().padLeft(2, '0')} ${date.hour.toString().padLeft(2, '0')}:${date.minute.toString().padLeft(2, '0')}";

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: IntrinsicHeight(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(borderRadius: BorderRadius.circular(4), child: Image.network(newsItem.image, width: 200.rpx)),
            SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(newsItem.title),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(formatDate(DateTime.parse(newsItem.postdate), [HH, ':', nn])),
                      Text('${newsItem.commentcount} 评')
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
