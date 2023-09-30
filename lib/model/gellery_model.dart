// To parse this JSON data, do
//
//     final gelleryModel = gelleryModelFromJson(jsonString);

import 'dart:convert';

GelleryModel gelleryModelFromJson(String str) =>
    GelleryModel.fromJson(json.decode(str));

String gelleryModelToJson(GelleryModel data) => json.encode(data.toJson());

class GelleryModel {
  List<Gallery>? gallery;

  GelleryModel({
    this.gallery,
  });

  factory GelleryModel.fromJson(Map<String, dynamic> json) => GelleryModel(
        gallery: json["Gallery"] == null
            ? []
            : List<Gallery>.from(
                json["Gallery"]!.map((x) => Gallery.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "Gallery": gallery == null
            ? []
            : List<dynamic>.from(gallery!.map((x) => x.toJson())),
      };
}

class Gallery {
  int? id;
  String? imageName;
  String? caption;

  Gallery({
    this.id,
    this.imageName,
    this.caption,
  });

  factory Gallery.fromJson(Map<String, dynamic> json) => Gallery(
        id: json["Id"],
        imageName: json["ImageName"],
        caption: json["Caption"],
      );

  Map<String, dynamic> toJson() => {
        "Id": id,
        "ImageName": imageName,
        "Caption": caption,
      };
}
