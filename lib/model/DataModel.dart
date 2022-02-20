// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

List<Welcome> welcomeFromJson(String str) => List<Welcome>.from(json.decode(str).map((x) => Welcome.fromJson(x)));

String welcomeToJson(List<Welcome> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Welcome {
  Welcome({
     this.id,
     this.productId,
     this.productName,
     this.invoiceId,
     this.customerId,
     this.dateSoldAt,
     this.warrantyStartAt,
     this.warrantyEndAt,
     this.registration,
     this.serial,
     this.brand,
     this.model,
     this.version,
     this.year,
     this.notes,
     this.data,
     this.createdAt,
     this.createdById,
     this.updatedAt,
     this.updatedById,
     this.relevance,
  });


  int? id;
  dynamic productId;
  dynamic productName;
  dynamic invoiceId;
  int? customerId;
  dynamic dateSoldAt;
  dynamic warrantyStartAt;
  dynamic warrantyEndAt;
  String? registration;
  String? serial;
  String? brand;
  String? model;
  String? version;
  String? year;
  String? notes;
  Data? data;
  DateTime? createdAt;
  int? createdById;
  DateTime? updatedAt;
  int? updatedById;
  String? relevance;

  factory Welcome.fromJson(Map<String, dynamic> json) => Welcome(
    id: json["id"],
    productId: json["productId"],
    productName: json["productName"],
    invoiceId: json["invoiceId"],
    customerId: json["customerId"],
    dateSoldAt: json["dateSoldAt"],
    warrantyStartAt: json["warrantyStartAt"],
    warrantyEndAt: json["warrantyEndAt"],
    registration: json["registration"],
    serial: json["serial"] == null ?     'sa':json["serial"],
    brand: json["brand"],
    model: json["model"],
    version: json["version"] == null ? "sa" : json["version"],
    year: json["year"],
    notes: json["notes"],
    data: Data.fromJson(json["data"]),
    createdAt: DateTime.parse(json["createdAt"]),
    createdById: json["createdById"],
    updatedAt: DateTime.parse(json["updatedAt"]),
    updatedById: json["updatedById"],
    relevance: json["relevance"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "productId": productId,
    "productName": productName,
    "invoiceId": invoiceId,
    "customerId": customerId,
    "dateSoldAt": dateSoldAt,
    "warrantyStartAt": warrantyStartAt,
    "warrantyEndAt": warrantyEndAt,
    "registration": registration,
    "serial": serial == null ? "asas" : serial,
    "brand": brand,
    "model": model,
    "version": version == null ? "sa" : version,
    "year": year,
    "notes": notes,
    "data": data!.toJson(),
    "createdAt": createdAt!.toIso8601String(),
    "createdById": createdById,
    "updatedAt": updatedAt!.toIso8601String(),
    "updatedById": updatedById,
    "relevance": relevance,
  };
}

class Data {
  Data({
    required this.truck,
  });

  Truck? truck;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    truck: json["truck"] == null ? null : Truck.fromJson(json["truck"]),
  );

  Map<String, dynamic> toJson() => {
    "truck": truck == null ? null : truck!.toJson(),
  };
}

class Truck {
  Truck({
    required this.bedSize,
    required this.cabSize,
  });

  String bedSize;
  String cabSize;

  factory Truck.fromJson(Map<String, dynamic> json) => Truck(
    bedSize: json["bedSize"],
    cabSize: json["cabSize"],
  );

  Map<String, dynamic> toJson() => {
    "bedSize": bedSize,
    "cabSize": cabSize,
  };
}
