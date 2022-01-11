// To parse this JSON data, do
//
//     final detailItem = detailItemFromMap(jsonString);

import 'dart:convert';

class DetailItem {
  DetailItem({
    required this.success,
    required this.newssource,
    required this.newsauthor,
    required this.keyword,
    required this.newstags,
    required this.btheme,
    required this.newsflag,
    required this.detail,
    required this.z,
  });

  final bool success;
  final String newssource;
  final String newsauthor;
  final String keyword;
  final List<Newstag> newstags;
  final bool btheme;
  final int newsflag;
  final String detail;
  final String z;

  factory DetailItem.fromJson(String str) => DetailItem.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory DetailItem.fromMap(Map<String, dynamic> json) => DetailItem(
        success: json["success"],
        newssource: json["newssource"],
        newsauthor: json["newsauthor"],
        keyword: json["keyword"],
        newstags: List<Newstag>.from(json["newstags"].map((x) => Newstag.fromMap(x))),
        btheme: json["btheme"],
        newsflag: json["newsflag"],
        detail: json["detail"],
        z: json["z"],
      );

  Map<String, dynamic> toMap() => {
        "success": success,
        "newssource": newssource,
        "newsauthor": newsauthor,
        "keyword": keyword,
        "newstags": List<dynamic>.from(newstags.map((x) => x.toMap())),
        "btheme": btheme,
        "newsflag": newsflag,
        "detail": detail,
        "z": z,
      };
}

class Newstag {
  Newstag({
    required this.id,
    required this.keyword,
    required this.link,
  });

  final int id;
  final String keyword;
  final String link;

  factory Newstag.fromJson(String str) => Newstag.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Newstag.fromMap(Map<String, dynamic> json) => Newstag(
        id: json["id"],
        keyword: json["keyword"],
        link: json["link"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "keyword": keyword,
        "link": link,
      };
}
