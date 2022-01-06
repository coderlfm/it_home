import 'package:carousel_slider/carousel_slider.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:it_home/widgets/appbar/appbar.dart';
import './home_controller.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, leading: Text('it 之家'), trailing: Icon(Icons.add)),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CarouselSlider(
              options: CarouselOptions(viewportFraction: 1, aspectRatio: .8, autoPlay: true),
              items: [Text('111'), Text('222')],
              // items: logic.detail?.imageList.map((item) {
              //   return Image.network(
              //     item.url,
              //     width: double.infinity,
              //     // height: 400,
              //     fit: BoxFit.cover,
              //   );
              // }).toList(),
            )
          ],
        ),
      ),
    );
  }
}
