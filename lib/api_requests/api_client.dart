import 'dart:convert';

import 'package:http/http.dart' as http;

import '../model/DataModel.dart';
import '../model/NewModel.dart';

List<NewModel> parseProducts(String responseBody) {
  final parsed = json.decode(responseBody).cast<Map<String, dynamic>>();
  return parsed.map<NewModel>((json) =>NewModel.fromJson(json)).toList();
}
Future getRequest()async{
  var headers = {
    'clientCode': '372',
    'sessionKey': '873441c402df0dda20261563256f2bb66a10bfb4f17d'
  };
  final response = await http.get(Uri.parse('https://api-as-eu10.erply.com/api/v1/device'),headers: headers);
  if (response.statusCode == 200) {
    var result = welcomeFromJson(response.body);
    //  var data = json.decode(response.body);
    // Welcome result = Welcome();
    // result = welcomeFromJson(data) as Welcome;

    return result;
  }
  else {
    print("here"+response.reasonPhrase.toString());
  }
}

