import 'package:flutter/material.dart';
import 'package:practice_graphql/model/DataModel.dart';
import 'package:practice_graphql/model/NewModel.dart';

import '../api_requests/api_client.dart';


class DataScreen extends StatefulWidget {
  const DataScreen({Key? key}) : super(key: key);

  @override
  _DataScreenState createState() => _DataScreenState();
}

class _DataScreenState extends State<DataScreen> {
  Welcome welcome = Welcome();

  late Future<NewModel> data;
  @override
  void initState() {

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: FutureBuilder(
              future: getRequest(),
              builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
                if(snapshot.hasData){
                  return Text(welcome.brand.toString());
                }else if(snapshot.hasError){
                  print(snapshot.error.toString());
                  return Text(snapshot.error.toString());
                }else{
                  return Text('loading');
                }

              },)
        ));
  }
}
