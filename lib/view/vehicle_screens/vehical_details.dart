import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:practice_graphql/constants/color_assets.dart';
import 'package:practice_graphql/view/vehicle_screens/add_vehicle.dart';
import 'package:practice_graphql/view/widgets/custom_text.dart';

class VehicleDetails extends StatefulWidget {
  const VehicleDetails({Key? key}) : super(key: key);

  @override
  _VehicleDetailsState createState() => _VehicleDetailsState();
}

class _VehicleDetailsState extends State<VehicleDetails> {
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
        title: const Text('Vehicles'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(children:  [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                height: 55,
                width: width * 0.58,
                child: const TextField(
                  style:  TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search,color: Colors.white,),
                    labelStyle: TextStyle(color: Colors.white),
                    labelText: "License Plate, VIN",
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                      borderSide: BorderSide(
                        color: Colors.white,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                  ),
                ),
              ),
              Container(
                height: 55,
                width: width * 0.15,
                decoration: BoxDecoration(
                  color: AppColors.primaryColorLight,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: const Center(child: Icon(Icons.filter_alt_outlined,color: Colors.white,)),
                
              ),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const AddNewVehicle()));
                },
                child: Container(
                  height: 55,
                  width: width * 0.15,
                  decoration: BoxDecoration(
                    color: AppColors.blueColor,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: const Center(child: Icon(Icons.add,color: Colors.white,)),

                ),
              ),
            ],
          ),
          const SizedBox(height: 10,),
          Expanded(
              child: ListView.builder(
                  itemCount: 20,
                  itemBuilder: (BuildContext ctx,int index){
                return  Container(
                    padding: const EdgeInsets.all(10),
                    width: width,
                    height: 80,
                    decoration: BoxDecoration(
                        color: AppColors.primaryColorLight,
                        border: Border(bottom: BorderSide(color: Colors.white.withOpacity(0.5),width: 1))
                        // borderRadius: BorderRadius.circular(5)
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        headingTextThree('Porsche', 18, Colors.white, FontWeight.bold),
                        Row(
                          children: [
                            headingTextUnderLine('Cayene 123', 15, Colors.white , FontWeight.normal),
                            const Spacer(),
                            headingText('SAM123', 15, Colors.white, FontWeight.normal)
                          ],
                        ),
                      ],
                    ),
                  );
              }),
          )
        ]),
      ),
    );
  }
}
