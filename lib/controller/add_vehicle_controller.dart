import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class AddVehicleController extends GetxController{
  final GlobalKey<FormState> licenseKey = GlobalKey<FormState>();
  final GlobalKey<FormState> vinKey = GlobalKey<FormState>();


  TextEditingController licenseController = TextEditingController();
  TextEditingController vinController = TextEditingController();
}