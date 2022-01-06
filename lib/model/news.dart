// To parse this JSON data, do
//
//     final news = newsFromMap(jsonString);

import 'dart:convert';

class NewsItem {
  NewsItem({
    this.imagelist,
    required this.kwdlist,
    required this.newsid,
    required this.title,
    required this.postdate,
    required this.orderdate,
    required this.description,
    required this.image,
    required this.hitcount,
    required this.commentcount,
    required this.hidecount,
    required this.cid,
    required this.nd,
    required this.sid,
    required this.url,
  });

  final List<String>? imagelist;
  final List<String> kwdlist;
  final int newsid;
  final String title;
  final String postdate;
  final String orderdate;
  final String description;
  final String image;
  final int hitcount;
  final int commentcount;
  final bool hidecount;
  final int cid;
  final int nd;
  final int sid;
  final String url;

  factory NewsItem.fromJson(String str) => NewsItem.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory NewsItem.fromMap(Map<String, dynamic> json) => NewsItem(
        imagelist: json["imagelist"] != null ? List<String>.from(json["imagelist"].map((x) => x)) : null,
        kwdlist: List<String>.from(json["kwdlist"].map((x) => x)),
        newsid: json["newsid"],
        title: json["title"],
        postdate: json["postdate"],
        orderdate: json["orderdate"],
        description: json["description"],
        image: json["image"],
        hitcount: json["hitcount"],
        commentcount: json["commentcount"],
        hidecount: json["hidecount"],
        cid: json["cid"],
        nd: json["nd"],
        sid: json["sid"],
        url: json["url"],
      );

  Map<String, dynamic> toMap() => {
        "imagelist": imagelist != null ? List<dynamic>.from(imagelist!.map((x) => x)) : null,
        "kwdlist": List<dynamic>.from(kwdlist.map((x) => x)),
        "newsid": newsid,
        "title": title,
        "postdate": postdate,
        "orderdate": orderdate,
        "description": description,
        "image": image,
        "hitcount": hitcount,
        "commentcount": commentcount,
        "hidecount": hidecount,
        "cid": cid,
        "nd": nd,
        "sid": sid,
        "url": url,
      };
}
