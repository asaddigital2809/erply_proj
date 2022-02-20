import 'dart:convert';

import 'package:http/http.dart'as http;

Future<void> makePostRequest(body) async {
  final url = Uri.parse('https://api-as-eu10.erply.com/api/v1/form/registration');
  final headers = {
    "accept": "application/json",
    "clientCode": "372",
    "sessionKey": "cc30bba0b8c13eccffb1a124cb34eae0309afad398f8",
    "Content-type": "application/json"
  };
  final response = await http.post(url, headers: headers, body: jsonEncode(body));
  print('Status code: ${response.statusCode}');
}