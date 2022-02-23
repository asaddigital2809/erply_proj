import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practice_graphql/controller/registration_controller.dart';
import 'package:practice_graphql/view/widgets/textFieldWidget.dart';


class RegisterNewDevice extends StatefulWidget {
  const RegisterNewDevice({Key? key}) : super(key: key);

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
        body: SafeArea(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 10),
                child: Column(
                  children: [
                    Form(
                      key: registerController.brandControllerKey,
                        child: defaultTextField(registerController.brandController, 'Enter Brand', 10)),
                    const SizedBox(height: 12,),
                    Form(
                        key: registerController.emailControllerKey,
                        child: defaultTextField(registerController.emailController, 'Enter Email', 100)),
                    const SizedBox(height: 12,),
                    Form(
                        key: registerController.firstnameControllerKey,
                        child: defaultTextField(registerController.firstnameController, 'Enter Firstname', 10)),
                    const SizedBox(height: 12,),
                    Form(
                        key: registerController.modelControllerKey,
                        child: defaultTextField(registerController.modelController, 'Enter Model', 10)),
                    const SizedBox(height: 12,),
                    Form(
                        key: registerController.nameControllerKey,
                        child: defaultTextField(registerController.nameController, 'Enter Name', 10)),
                    const SizedBox(height: 12,),
                    Form(
                        key: registerController.phoneControllerKey,
                        child: defaultTextField(registerController.phoneController, 'Enter Brand', 10)),
                    const SizedBox(height: 12,),
                    Form(
                        key: registerController.registrationControllerKey,
                        child: defaultTextField(registerController.registrationController, 'Enter registration', 10)),
                    const SizedBox(height: 12,),
                    Form(
                        key: registerController.serviceNameControllerKey,
                        child: defaultTextField(registerController.serviceNameController, 'Enter Service', 10)),
                    const SizedBox(height: 12,),
                    Form(
                        key: registerController.yearControllerKey,
                        child: defaultTextField(registerController.yearController, 'Enter Service', 10)),
                    const SizedBox(height: 15),
                    SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: ElevatedButton(onPressed: ()async{
                         await registerController.addToBody(registerController.brandController.text, registerController.emailController.text,
                             registerController.firstnameController.text, registerController.modelController.text, registerController.nameController.text,
                             registerController.phoneController.text, registerController.registrationController.text, registerController.serviceNameController.text,
                             registerController.yearController.text);
                        }, child: const Text('Register')))
                  ],
                ),
              ),
            )));
  }
}
