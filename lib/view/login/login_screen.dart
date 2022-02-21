import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practice_graphql/constants/color_assets.dart';
import 'package:practice_graphql/view/widgets/custom_container.dart';
import 'package:practice_graphql/view/widgets/textFieldWIdget.dart';

import '../../controller/login_controller.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  LoginController loginController = Get.put(LoginController());
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double width = size.width;
    double height = size.height;

    return Scaffold(
      backgroundColor: AppColors.backGroundColor,
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Login'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      defaultContainer(Colors.white, Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:
                       const [
                        ImageIcon(AssetImage('assets/icons/userONe.png')),
                        SizedBox(width: 5,),
                        Text('User Name',style: TextStyle(fontWeight: FontWeight.bold),)
                      ],), 50, width * 0.45),
                        defaultContainer(AppColors.primaryColor, Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:
                          const [
                            Icon(Icons.vpn_key_outlined,color: Colors.grey,),
                            SizedBox(width: 5,),
                            Text('SSO',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold)),
                          ],), 50, width * 0.45)
                    ],),
                    const SizedBox(height: 20,),
                    defaultTextFieldNumber(loginController.clientController, 'Client Code'),
                    const SizedBox(height: 20,),
                    defaultTextFieldName(loginController.usernameController,'Username'),
                    const SizedBox(height: 20,),
                    defaultTextFieldPass(loginController.passController,'Password')
                  ],
                ),
                const SizedBox(height: 10,),
                Text('Forgot Password?',style: TextStyle(color: AppColors.blueColor,fontWeight: FontWeight.bold)),
                const SizedBox(height: 10,),
                defaultContainer(Colors.grey,const Center(child: Text('Login',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15))), 50, width),
                const SizedBox(height: 10,),
                defaultContainer(AppColors.blueColor,const Center(child: Text('Register',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15))), 50, width)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
