import 'package:get/get.dart';
import 'package:flutter/material.dart';
import './circle_controller.dart';

class CirclePage extends GetView<CircleController> {
    
    const CirclePage({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(title: const Text('CirclePage'),),
            body: Container(),
        );
    }
}