//import 'package.material.dart';
// To parse this JSON data, do
//
//     final userBannerModel = userBannerModelFromJson(jsonString);

import 'dart:convert';

UserBannerModel userBannerModelFromJson(String str) =>
    UserBannerModel.fromJson(json.decode(str));

String userBannerModelToJson(UserBannerModel data) =>
    json.encode(data.toJson());

class UserBannerModel {
  List<Banner>? banner;

  UserBannerModel({
    this.banner,
  });

  factory UserBannerModel.fromJson(Map<String, dynamic> json) =>
      UserBannerModel(
        banner: json["banner"] == null
            ? []
            : List<Banner>.from(json["banner"]!.map((x) => Banner.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "banner": banner == null
            ? []
            : List<dynamic>.from(banner!.map((x) => x.toJson())),
      };
}

class Banner {
  int? id;
  String? bannerPath;

  Banner({
    this.id,
    this.bannerPath,
  });

  factory Banner.fromJson(Map<String, dynamic> json) => Banner(
        id: json["Id"],
        bannerPath: json["BannerPath"],
      );

  Map<String, dynamic> toJson() => {
        "Id": id,
        "BannerPath": bannerPath,
      };
}
