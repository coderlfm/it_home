import 'package:carousel_slider/carousel_slider.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:it_home/widgets/appbar/appbar.dart';
import './home_controller.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<HomeController>();

    return Scaffold(
      appBar: buildAppBar(context, leading: Text('it 之家'), trailing: Icon(Icons.add)),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CarouselSlider(
              options: CarouselOptions(viewportFraction: 1, aspectRatio: .8, autoPlay: true, height: 300),
              items: [Text('轮播1'), Text('轮播2')],
            ),
            GetBuilder<HomeController>(builder: (controller) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: List.generate(controller.newsList.length, (index) => Text(controller.newsList[index].title)),
              );
            })
          ],
        ),
      ),
    );
  }
}
