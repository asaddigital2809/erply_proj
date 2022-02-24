import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:practice_graphql/controller/add_vehicle_controller.dart';
import 'package:practice_graphql/view/widgets/custom_container.dart';
import 'package:practice_graphql/view/widgets/custom_text.dart';
import 'package:practice_graphql/view/widgets/textFieldWidget.dart';

import '../../constants/color_assets.dart';

class AddNewVehicle extends StatefulWidget {
  const AddNewVehicle({Key? key}) : super(key: key);

  @override
  _AddNewVehicleState createState() => _AddNewVehicleState();
}

class _AddNewVehicleState extends State<AddNewVehicle> {
  AddVehicleController addVehicleController = Get.put(AddVehicleController());
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double height = size.height;
    double width = size.width;
    return Scaffold(
      backgroundColor: AppColors.primaryColorDark,
      appBar: AppBar(
        elevation: 10,
        centerTitle: true,
        title: const Text('Add New Vehicle'),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            headingText('123ASD', 30, Colors.white, FontWeight.bold),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                    height: 50,
                    width: width * 0.7,
                    child: defaultTextFieldName(addVehicleController.licenseController, 'License Plate')
                ),
                const SizedBox(width: 10,),
                 defaultContainer(AppColors.blueColor, Center(child: headingText('Search LP', 12, Colors.white, FontWeight.normal)),50, width*0.2)
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                    height: 50,
                    width: width * 0.7,
                    child: defaultTextFieldName(addVehicleController.vinController, 'VIN')
                ),
                const SizedBox(width: 10,),
                 defaultContainer(AppColors.blueColor, Center(child: headingText('Search VIN', 12, Colors.white, FontWeight.normal)),50, width*0.2)
              ],
            ),

          ],
        ),
      ),
    );
  }
}
