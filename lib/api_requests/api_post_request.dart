import 'dart:convert';

import 'package:http/http.dart'as http;
import 'package:practice_graphql/constants/api_paths.dart';

Future<void> makePostRequest(body,key) async {
  final url = Uri.parse(ApiPaths.baseUrl+ApiPaths.registerDeviceApi);
  final headers = {
    "accept": "application/json",
    "clientCode": "372",
    "sessionKey": "$key",
    "Content-type": "application/json"
  };
  final response = await http.post(url, headers: headers, body: jsonEncode(body));
  print('Status code: ${response.statusCode}');
}
