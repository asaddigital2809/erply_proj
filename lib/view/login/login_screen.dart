import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practice_graphql/constants/color_assets.dart';
import 'package:practice_graphql/view/devices_screen/device_data_screen.dart';
import 'package:practice_graphql/view/widgets/custom_container.dart';
import 'package:practice_graphql/view/widgets/snackbar_widget.dart';
import 'package:practice_graphql/view/widgets/textFieldWidget.dart';
import '../../controller/login_controller.dart';
import '../widgets/custom_text.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  LoginController loginController = Get.put(LoginController());
   bool _isLoading = false;
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
      body:  Center(
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
                              ImageIcon(AssetImage('assets/icons/sso.png'),color: Colors.grey,),
                              SizedBox(width: 5,),
                              Text('SSO',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold)),
                            ],), 50, width * 0.45)
                      ],),
                      const SizedBox(height: 20,),
                      Form(
                          key: loginController.clientControllerKey,
                          child: defaultTextFieldNumber(loginController.clientController, 'Client Code')),
                      const SizedBox(height: 20,),
                      Form(
                          key: loginController.usernameControllerKey,
                          child: defaultTextFieldName(loginController.usernameController,'Username')),
                      const SizedBox(height: 20,),
                      Form(
                         key: loginController.passControllerKey,
                          child: defaultTextFieldPass(loginController.passController,'Password'))
                    ],
                  ),
                  const SizedBox(height: 10,),
                  headingText('Forgot Password?',15,AppColors.blueColor,FontWeight.w600),
                  const SizedBox(height: 10,),
                  InkWell(
                      onTap: () async {
                        if(loginController.clientControllerKey.currentState!.validate()){
                          if(loginController.usernameControllerKey.currentState!.validate()){
                            if(loginController.passControllerKey.currentState!.validate()){
                              setState(() {
                                _isLoading = true;
                              });
                              FocusScope.of(context).requestFocus( FocusNode());
                              await loginController.makeLoginPostRequest(
                                  loginController.clientController.text,
                                  loginController.passController.text,
                                  loginController.usernameController.text);
                              if(loginController.isLogInSuccess ==  true){
                                setState(() {
                                  _isLoading = false;
                                });
                                defaultSnackBar('Login Successful', context);
                                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> DataScreen(sKey: loginController.sessionKey)));
                              }else{
                                setState(() {
                                  _isLoading = false;
                                });
                                defaultSnackBar('Login Failed', context);
                              }
                            }
                          }
                        }
                      },
                      child: defaultContainer(Colors.grey,Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:  [
                        _isLoading ==  true ? SizedBox(height: 15,width: 15,child: CircularProgressIndicator(color: AppColors.backGroundColor,strokeWidth: 2)) : const Text(''),
                        const SizedBox(width: 5,),
                        const Center(child: Text('Login',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15))),
                      ]), 50, width)),
                  const SizedBox(height: 5,),
                   Padding(padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Divider(color: Colors.white.withOpacity(0.5),thickness: 1,),
                  ),
                  const SizedBox(height: 5,),
                  defaultContainer(AppColors.blueColor,const Center(child: Text('Register',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15))), 50, width)
                ],
              ),
            ),
          ),
        ),

    );
  }
}
