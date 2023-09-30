// To parse this JSON data, do
//
//     final message = messageFromJson(jsonString);

import 'dart:convert';

Message messageFromJson(String str) => Message.fromJson(json.decode(str));

String messageToJson(Message data) => json.encode(data.toJson());

class Message {
  num? status;
  String? message;
  num? id;
  String? memberName1;
  String? memberName2;
  String? address;
  String? city;
  String? mobile1;
  dynamic mobile2;
  String? password;
  String? username;
  String? email;

  Message({
    this.status,
    this.message,
    this.id,
    this.memberName1,
    this.memberName2,
    this.address,
    this.city,
    this.mobile1,
    this.mobile2,
    this.password,
    this.username,
    this.email,
  });

  factory Message.fromJson(Map<String, dynamic> json) => Message(
        status: json["Status"],
        message: json["Message"],
        id: json["Id"],
        memberName1: json["MemberName1"],
        memberName2: json["MemberName2"],
        address: json["Address"],
        city: json["City"],
        mobile1: json["Mobile1"],
        mobile2: json["Mobile2"],
        password: json["Password"],
        username: json["Username"],
        email: json["Email"],
      );

  Map<String, dynamic> toJson() => {
        "Status": status,
        "Message": message,
        "Id": id,
        "MemberName1": memberName1,
        "MemberName2": memberName2,
        "Address": address,
        "City": city,
        "Mobile1": mobile1,
        "Mobile2": mobile2,
        "Password": password,
        "Username": username,
        "Email": email,
      };
}
