import 'dart:convert';
/// brand : "lenovo"
/// email : "asaddigital@gmail.com"
/// firstname : "asad"
/// model : "2015"
/// name : "F15"
/// phone : "111111"
/// registration : "khan"
/// serviceName : "programming"
/// year : "2019"

RegisterModel registerModelFromJson(String str) => RegisterModel.fromJson(json.decode(str));
String registerModelToJson(RegisterModel data) => json.encode(data.toJson());
class RegisterModel {
  RegisterModel({
      this.brand, 
      this.email, 
      this.firstname, 
      this.model, 
      this.name, 
      this.phone, 
      this.registration, 
      this.serviceName, 
      this.year,});

  RegisterModel.fromJson(dynamic json) {
    brand = json['brand'];
    email = json['email'];
    firstname = json['firstname'];
    model = json['model'];
    name = json['name'];
    phone = json['phone'];
    registration = json['registration'];
    serviceName = json['serviceName'];
    year = json['year'];
  }
  String? brand;
  String? email;
  String? firstname;
  String? model;
  String? name;
  String? phone;
  String? registration;
  String? serviceName;
  String? year;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['brand'] = brand;
    map['email'] = email;
    map['firstname'] = firstname;
    map['model'] = model;
    map['name'] = name;
    map['phone'] = phone;
    map['registration'] = registration;
    map['serviceName'] = serviceName;
    map['year'] = year;
    return map;
  }

}