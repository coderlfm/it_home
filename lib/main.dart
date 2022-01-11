import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:it_home/app/app_bindings.dart';
import 'package:it_home/common/theme.dart';
import 'package:it_home/utils/hot_size.dart';

import 'routes/app_pages.dart';

void main() {
  HotSize.init();

  runApp(
    GetMaterialApp(
      title: "it之家",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      theme: LightTheme,
      darkTheme: DarkTheme,
      themeMode: ThemeMode.system,
      initialBinding: AppBindings(),
    ),
  );
}
