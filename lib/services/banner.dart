// To parse this JSON data, do
//
//     final bannerItem = bannerItemFromMap(jsonString);

import 'dart:convert';

class BannerItem {
  BannerItem({
    required this.title,
    required this.starttime,
    required this.endtime,
    required this.link,
    required this.opentype,
    required this.device,
    required this.isad,
    required this.image,
  });

  final String title;
  final String starttime;
  final String endtime;
  final String link;
  final int opentype;
  final String device;
  final bool isad;
  final String image;

  factory BannerItem.fromJson(String str) => BannerItem.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory BannerItem.fromMap(Map<String, dynamic> json) => BannerItem(
        title: json["title"],
        starttime: json["starttime"],
        endtime: json["endtime"],
        link: json["link"],
        opentype: json["opentype"],
        device: json["device"],
        isad: json["isad"],
        image: json["image"],
      );

  Map<String, dynamic> toMap() => {
        "title": title,
        "starttime": starttime,
        "endtime": endtime,
        "link": link,
        "opentype": opentype,
        "device": device,
        "isad": isad,
        "image": image,
      };
}
