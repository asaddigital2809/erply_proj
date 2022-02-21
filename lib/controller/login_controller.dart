import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class LoginController extends GetxController{
  final GlobalKey<FormState> clientControllerKey = GlobalKey<FormState>();
  final GlobalKey<FormState> usernameControllerKey = GlobalKey<FormState>();
  final GlobalKey<FormState> passControllerKey = GlobalKey<FormState>();
  TextEditingController clientController = TextEditingController();
  TextEditingController usernameController = TextEditingController();
  TextEditingController passController = TextEditingController();

}