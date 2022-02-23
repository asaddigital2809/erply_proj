import 'dart:async';
import 'dart:io';
import 'package:http/http.dart' as http;

import '../constants/string_assets.dart';
class ApiRequest {
  final String url;
  var headers;
  ApiRequest({required this.url,required this.headers});
  Future<http.Response> get() async {
    try {
      return http.get(
        Uri.parse(url),headers: headers).timeout(const Duration(minutes: 2),
          onTimeout: (){
            return http.Response("Error", StringAssets.timeoutCode);
          });
    } on TimeoutException catch (e) {
      return http.Response("Error", StringAssets.timeoutCode);
    } on SocketException catch (e) {
      return http.Response("Error", StringAssets.timeoutCode);
    } on Error catch (e) {
      return http.Response("Error", StringAssets.timeoutCode);
    }
  }
}