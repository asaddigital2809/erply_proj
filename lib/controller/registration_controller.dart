import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:practice_graphql/api_requests/api_post_request.dart';

class RegisterController extends GetxController {
  final GlobalKey<FormState> brandControllerKey = GlobalKey<FormState>();
  final GlobalKey<FormState> emailControllerKey = GlobalKey<FormState>();
  final GlobalKey<FormState> firstnameControllerKey = GlobalKey<FormState>();
  final GlobalKey<FormState> modelControllerKey = GlobalKey<FormState>();
  final GlobalKey<FormState> nameControllerKey = GlobalKey<FormState>();
  final GlobalKey<FormState> phoneControllerKey = GlobalKey<FormState>();
  final GlobalKey<FormState> registrationControllerKey = GlobalKey<FormState>();
  final GlobalKey<FormState> serviceNameControllerKey = GlobalKey<FormState>();
  final GlobalKey<FormState> yearControllerKey = GlobalKey<FormState>();
  TextEditingController brandController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController firstnameController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController modelController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController registrationController = TextEditingController();
  TextEditingController serviceNameController = TextEditingController();
  TextEditingController yearController = TextEditingController();
  var body = {};

  addToBody(String brand, String email, String fName, String model, String name,
      String phone, String reg, String serviceName, String year,String key) {

    body["brand"] = brand;
    body["email"] = email;
    body["firstname"] = fName;
    body["model"] = model;
    body["name"] = name;
    body["phone"] = phone;
    body["registration"] = reg;
    body["serviceName"] = serviceName;
    body["year"] = year;
    makePostRequest(body,key);
  }
}
