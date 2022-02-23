import 'package:flutter/material.dart';
import 'package:practice_graphql/model/MyDataModel.dart';
import 'package:practice_graphql/view/widgets/custom_text.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../api_requests/data_api_client.dart';
import '../../constants/color_assets.dart';


class DataScreen extends StatefulWidget {
  String sKey = '';
   DataScreen({Key? key,required this.sKey}) : super(key: key);

  @override
  _DataScreenState createState() => _DataScreenState();
}

class _DataScreenState extends State<DataScreen> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.backGroundColor,
        appBar: AppBar(
          elevation: 10,
          centerTitle: true,
        title: const Text('Device Info'),
      ),
        body: SafeArea(
            child:
            Column(
              children: [
                const SizedBox(height: 10,),
                Container(
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                          headingText('Id', 15, AppColors.backGroundColor, FontWeight.bold),
                        headingText('Brand', 15, AppColors.backGroundColor, FontWeight.bold),
                        headingText('Model', 15, AppColors.backGroundColor, FontWeight.bold),
                        headingText('Year', 15, AppColors.backGroundColor, FontWeight.bold),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 10,),
                FutureBuilder(
                      future: DataCall().getRequest(widget.sKey),
                      builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
                        if(snapshot.hasData){
                          List<MyDataModel> myDataModelList = snapshot.data;
                          return ListView.builder(
                            shrinkWrap: true,
                              itemCount: myDataModelList.length,
                              itemBuilder: (bContext, index) {
                                MyDataModel myDataModel = myDataModelList[index];
                                return Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 10),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          headingText(myDataModel.id.toString(), 12, Colors.white, FontWeight.bold),
                                          headingText(myDataModel.brand, 12, Colors.white, FontWeight.bold),
                                          headingText(myDataModel.model, 12, Colors.white, FontWeight.bold),
                                          headingText(myDataModel.year, 12, Colors.white, FontWeight.bold), // (myDataModel.brand,),
                                        ],
                                      ),
                                    ),
                                    const Padding(padding: EdgeInsets.symmetric(horizontal: 10),child: Divider(color: Colors.white,thickness: 2,))
                                  ],
                                );
                              });
                            }else if(snapshot.hasError){
                          print(snapshot.error.toString());
                          return headingText(snapshot.error.toString(), 12, Colors.white, FontWeight.bold);
                        }else{
                          return const Center(child: CircularProgressIndicator(color: Colors.white,));
                        }

                      },
                ),
              ],
            )
        ));
  }
}
