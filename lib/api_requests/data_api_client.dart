import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:practice_graphql/model/MyDataModel.dart';

Future getRequest()async{
  var headers = {
    'clientCode': '372',
    'sessionKey': '872dc767868373adc7e4c1c0b7155e11f3bef05145a1'
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

