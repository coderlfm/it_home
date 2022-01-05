import 'package:get/get.dart';
import 'package:flutter/material.dart';
import './discover_controller.dart';

class DiscoverPage extends GetView<DiscoverController> {
    
    const DiscoverPage({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(title: const Text('DiscoverPage'),),
            body: Container(),
        );
    }
}