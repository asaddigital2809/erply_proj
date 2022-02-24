import 'package:flutter/material.dart';
import 'package:practice_graphql/view/devices_screen/device_data_screen.dart';
import 'package:practice_graphql/view/login/login_screen.dart';
import 'package:practice_graphql/view/vehicle_screens/vehical_details.dart';

import 'constants/color_assets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch().copyWith(
            primary: AppColors.primaryColor,
          ),),
      home:  const VehicleDetails(),
    );
  }
}
