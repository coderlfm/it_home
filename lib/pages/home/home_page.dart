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
      body: Container(),
    );
  }
}
