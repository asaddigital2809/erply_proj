import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:practice_graphql/constants/api_paths.dart';

import '../methods/shared_pref.dart';

class LoginController extends GetxController{
  final GlobalKey<FormState> clientControllerKey = GlobalKey<FormState>();
  final GlobalKey<FormState> usernameControllerKey = GlobalKey<FormState>();
  final GlobalKey<FormState> passControllerKey = GlobalKey<FormState>();
  TextEditingController clientController = TextEditingController();
  TextEditingController usernameController = TextEditingController();
  TextEditingController passController = TextEditingController();
  bool isLogInSuccess = false;


  Future<void> makeLoginPostRequest(String clientCode,String pass, String user) async {
    var headers = {
      'accept': 'application/json',
      'Content-Type': 'application/json',
      'Cookie': 'apisession_372=190603650aa1ad4c831c5d01c1c7f0771e059f5c7314'
    };
    var body = json.encode({
      "clientCode": clientCode,
      "password": pass,
      "username": user
    });
    final response = await http.post(Uri.parse(ApiPaths.baseUrl+ApiPaths.authApi), headers: headers,body: body);
    if (response.statusCode == 200) {
      Map mapRes = json.decode(response.body);
      saveSession(mapRes["sessionKey"]);
      isLogInSuccess = true;

      update;
    }else if(response.statusCode == 401){
      isLogInSuccess = false;
    }
    else {
      print(response.reasonPhrase);
    }
  }
}