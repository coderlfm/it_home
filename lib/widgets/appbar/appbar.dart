import 'package:flutter/material.dart';

AppBar buildAppBar(BuildContext context, {required Widget leading, required Widget trailing}) {
  final light = MediaQuery.of(context).platformBrightness == Brightness.light;

  print('mode: $light');

  return AppBar(
    title: Container(
      width: double.maxFinite,
      padding: EdgeInsets.only(left: 15),
      child: Padding(
          padding: const EdgeInsets.all(6.0),
          child: Text(
            '搜索',
            style: TextStyle(
              fontSize: 14,
              color: light ? Colors.black54 : Colors.white70,
            ),
          )),
      decoration: BoxDecoration(
        color: light ? Colors.black12 : Colors.white24,
        borderRadius: BorderRadius.circular(50),
      ),
    ),
    leading: Center(child: leading),
    actions: [trailing],
    shadowColor: Colors.transparent,
  );
}
