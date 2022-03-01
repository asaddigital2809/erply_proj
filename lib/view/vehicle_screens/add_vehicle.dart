  import 'package:flutter/material.dart';
  import 'package:get/get.dart';
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
    String? dropDownValue = '';
    List<String> values = [];
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
          padding: const EdgeInsets.all(10),
          child: SingleChildScrollView(
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
                SizedBox(
              height: 80,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10)),
                  height: height * 0.2,
                  child:  DropdownButtonHideUnderline(
                      child: DropdownButtonFormField<String>(
                        decoration: const InputDecoration(
                          contentPadding:
                          EdgeInsets.only(left: 14.0, bottom: 8.0, top: 8.0),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          filled: true,
                          labelStyle: TextStyle(color: Colors.white),
                          labelText: 'Make',
                          counterText: '',
                          fillColor: Colors.transparent,
                        ),
                        dropdownColor: AppColors.primaryColorLight,
                        focusColor: AppColors.primaryColorLight,
                        value: dropDownValue,
                        isExpanded: true,
                        items: values.map((String value) {
                          return
                            DropdownMenuItem<String>(
                              value: value,
                              child: Padding(
                                  padding: const EdgeInsets.all(5),
                                  child: customText(value,16,Colors.white,FontWeight.normal)),
                            );
                        }).toList(),
                        iconSize: 30,
                        onChanged: (String? val) {
                          setState(() {
                            dropDownValue = val;
                          });
                        },
                      ),
                    ),

                ),
              ),
            ),
                SizedBox(
                  height: 80,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10)),
                      height: height * 0.2,
                      child:  DropdownButtonHideUnderline(
                        child: DropdownButtonFormField<String>(
                          decoration: const InputDecoration(
                            contentPadding:
                            EdgeInsets.only(left: 14.0, bottom: 8.0, top: 8.0),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            filled: true,
                            labelStyle: TextStyle(color: Colors.white),
                            labelText: 'Model',
                            counterText: '',
                            fillColor: Colors.transparent,
                          ),
                          dropdownColor: AppColors.primaryColorLight,
                          focusColor: AppColors.primaryColorLight,
                          value: dropDownValue,
                          isExpanded: true,
                          items: values.map((String value) {
                            return
                              DropdownMenuItem<String>(
                                value: value,
                                child: Padding(
                                    padding: const EdgeInsets.all(5),
                                    child: customText(value,16,Colors.white,FontWeight.normal)),
                              );
                          }).toList(),
                          iconSize: 30,
                          onChanged: (String? val) {
                            setState(() {
                              dropDownValue = val;
                            });
                          },
                        ),
                      ),

                    ),
                  ),
                ),
                SizedBox(
                  height: 80,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10)),
                      height: height * 0.2,
                      child:  DropdownButtonHideUnderline(
                        child: DropdownButtonFormField<String>(
                          decoration: const InputDecoration(
                            contentPadding:
                            EdgeInsets.only(left: 14.0, bottom: 8.0, top: 8.0),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            filled: true,
                            labelStyle: TextStyle(color: Colors.white),
                            labelText: 'Sub Model',
                            counterText: '',
                            fillColor: Colors.transparent,
                          ),
                          dropdownColor: AppColors.primaryColorLight,
                          focusColor: AppColors.primaryColorLight,
                          value: dropDownValue,
                          isExpanded: true,
                          items: values.map((String value) {
                            return
                              DropdownMenuItem<String>(
                                value: value,
                                child: Padding(
                                    padding: const EdgeInsets.all(5),
                                    child: customText(value,16,Colors.white,FontWeight.normal)),
                              );
                          }).toList(),
                          iconSize: 30,
                          onChanged: (String? val) {
                            setState(() {
                              dropDownValue = val;
                            });
                          },
                        ),
                      ),

                    ),
                  ),
                ),
                SizedBox(
                  height: 80,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10)),
                      height: height * 0.2,
                      child:  DropdownButtonHideUnderline(
                        child: DropdownButtonFormField<String>(
                          decoration: const InputDecoration(
                            contentPadding:
                            EdgeInsets.only(left: 14.0, bottom: 8.0, top: 8.0),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            filled: true,
                            labelStyle: TextStyle(color: Colors.white),
                            labelText: 'year',
                            counterText: '',
                            fillColor: Colors.transparent,
                          ),
                          dropdownColor: AppColors.primaryColorLight,
                          focusColor: AppColors.primaryColorLight,
                          value: dropDownValue,
                          isExpanded: true,
                          items: values.map((String value) {
                            return
                              DropdownMenuItem<String>(
                                value: value,
                                child: Padding(
                                    padding: const EdgeInsets.all(5),
                                    child: customText(value,16,Colors.white,FontWeight.normal)),
                              );
                          }).toList(),
                          iconSize: 30,
                          onChanged: (String? val) {
                            setState(() {
                              dropDownValue = val;
                            });
                          },
                        ),
                      ),

                    ),
                  ),
                ),
                SizedBox(
                  height: 80,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10)),
                      height: height * 0.2,
                      child:  DropdownButtonHideUnderline(
                        child: DropdownButtonFormField<String>(
                          decoration: const InputDecoration(
                            contentPadding:
                            EdgeInsets.only(left: 14.0, bottom: 8.0, top: 8.0),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            filled: true,
                            labelStyle: TextStyle(color: Colors.white),
                            labelText: 'Bed',
                            counterText: '',
                            fillColor: Colors.transparent,
                          ),
                          dropdownColor: AppColors.primaryColorLight,
                          focusColor: AppColors.primaryColorLight,
                          value: dropDownValue,
                          isExpanded: true,
                          items: values.map((String value) {
                            return
                              DropdownMenuItem<String>(
                                value: value,
                                child: Padding(
                                    padding: const EdgeInsets.all(5),
                                    child: customText(value,16,Colors.white,FontWeight.normal)),
                              );
                          }).toList(),
                          iconSize: 30,
                          onChanged: (String? val) {
                            setState(() {
                              dropDownValue = val;
                            });
                          },
                        ),
                      ),

                    ),
                  ),
                ),
                SizedBox(
                  height: 80,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10)),
                      height: height * 0.2,
                      child:  DropdownButtonHideUnderline(
                        child: DropdownButtonFormField<String>(
                          decoration: const InputDecoration(
                            contentPadding:
                            EdgeInsets.only(left: 14.0, bottom: 8.0, top: 8.0),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            filled: true,
                            labelStyle: TextStyle(color: Colors.white),
                            labelText: 'Extras',
                            counterText: '',
                            fillColor: Colors.transparent,
                          ),
                          dropdownColor: AppColors.primaryColorLight,
                          focusColor: AppColors.primaryColorLight,
                          value: dropDownValue,
                          isExpanded: true,
                          items: values.map((String value) {
                            return
                              DropdownMenuItem<String>(
                                value: value,
                                child: Padding(
                                    padding: const EdgeInsets.all(5),
                                    child: customText(value,16,Colors.white,FontWeight.normal)),
                              );
                          }).toList(),
                          iconSize: 30,
                          onChanged: (String? val) {
                            setState(() {
                              dropDownValue = val;
                            });
                          },
                        ),
                      ),

                    ),
                  ),
                ),
                customText('ADD NOTES', 20, Colors.white, FontWeight.bold),
                const SizedBox(height: 10),
                defaultTextFieldName(addVehicleController.vinController, 'Add New Note'),
                const SizedBox(width: 12,),
                Row(
                  children: [
                    const Spacer(),
                    defaultContainer(Colors.green, Center(child: customText('Save', 15, Colors.white, FontWeight.normal)), 50, width * 0.2),
                    const SizedBox(width: 10,),
                    defaultContainer(AppColors.primaryColorLight, Center(child: customText('Cancel', 15, Colors.white, FontWeight.normal)), 50, width * 0.2)
                  ],
                )

              ],
            ),
          ),
        ),
      );
    }
  }
