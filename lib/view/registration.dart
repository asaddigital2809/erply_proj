import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practice_graphql/constants/color_assets.dart';
import 'package:practice_graphql/controller/registration_controller.dart';
import 'package:practice_graphql/view/vehicle_screens/vehical_details.dart';
import 'package:practice_graphql/view/widgets/textFieldWidget.dart';


class RegisterNewDevice extends StatefulWidget {
  String sKey = '';
   RegisterNewDevice({Key? key,required this.sKey}) : super(key: key);

  @override
  _RegisterNewDeviceState createState() => _RegisterNewDeviceState();
}

class _RegisterNewDeviceState extends State<RegisterNewDevice> {
  RegisterController registerController = Get.put(RegisterController());
  @override
  void initState() {
  super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Register Device'),
      ),
        backgroundColor: AppColors.primaryColorLight,
        body: SafeArea(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 10),
                child: Column(
                  children: [
                    Form(
                      key: registerController.brandControllerKey,
                        child: defaultTextFieldName(registerController.brandController, 'Enter Brand')),
                    const SizedBox(height: 12,),
                    Form(
                        key: registerController.emailControllerKey,
                        child: defaultTextFieldName(registerController.emailController, 'Enter Email')),
                    const SizedBox(height: 12,),
                    Form(
                        key: registerController.firstnameControllerKey,
                        child: defaultTextFieldName(registerController.firstnameController, 'Enter Firstname')),
                    const SizedBox(height: 12,),
                    Form(
                        key: registerController.modelControllerKey,
                        child: defaultTextFieldName(registerController.modelController, 'Enter Model')),
                    const SizedBox(height: 12,),
                    Form(
                        key: registerController.nameControllerKey,
                        child: defaultTextFieldName(registerController.nameController, 'Enter Name')),
                    const SizedBox(height: 12,),
                    Form(
                        key: registerController.phoneControllerKey,
                        child: defaultTextFieldName(registerController.phoneController, 'Enter Phone')),
                    const SizedBox(height: 12,),
                    Form(
                        key: registerController.registrationControllerKey,
                        child: defaultTextFieldName(registerController.registrationController, 'Enter registration')),
                    const SizedBox(height: 12,),
                    Form(
                        key: registerController.serviceNameControllerKey,
                        child: defaultTextFieldName(registerController.serviceNameController, 'Enter Service')),
                    const SizedBox(height: 12,),
                    Form(
                        key: registerController.yearControllerKey,
                        child: defaultTextFieldName(registerController.yearController, 'Enter Year')),
                    const SizedBox(height: 15),
                    SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: ElevatedButton(
                            onPressed: ()async{

                              await registerController.addToBody(registerController.brandController.text, registerController.emailController.text,
                             registerController.firstnameController.text, registerController.modelController.text, registerController.nameController.text,
                             registerController.phoneController.text, registerController.registrationController.text, registerController.serviceNameController.text,
                             registerController.yearController.text,widget.sKey);
                              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> VehicleDetails(sKey: widget.sKey)));

                            }, child: const Text('Register')))
                  ],
                ),
              ),
            )));
  }
}
