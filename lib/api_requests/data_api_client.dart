import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:practice_graphql/model/MyDataModel.dart';
import 'package:shared_preferences/shared_preferences.dart';
class DataCall{


  Future getRequest(sessionKey) async {
    var headers =  {
      'clientCode': '372',
      'sessionKey': '$sessionKey'
    };
    final response = await http.get(Uri.parse('https://api-as-eu10.erply.com/api/v1/device'),
        headers: headers);
    if (response.statusCode == 200) {
      var result = myDataModelFromJson(response.body);
      List<MyDataModel> myDataList = result;
      return myDataList;
    }
    else {
      print("here"+response.body);
    }
  }
}


