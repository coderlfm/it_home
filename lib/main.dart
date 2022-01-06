import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:it_home/common/theme.dart';

import 'routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      title: "it之家",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      theme: LightTheme,
      darkTheme: DarkTheme,
      themeMode: ThemeMode.system,
    ),
  );
}
