import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

Widget defaultTextField(TextEditingController callback, String title,int length) {
  return TextFormField(
    inputFormatters: [
      FilteringTextInputFormatter.allow(RegExp(r"[a-zA-Z0-9]+|\s"))
    ],
    controller: callback,
    decoration: InputDecoration(
      border: const OutlineInputBorder(),
      filled: true,
      labelText: title,
      counterText: '',
      fillColor: Colors.transparent,
    ),
    maxLength: length,
    keyboardType: TextInputType.name,
    validator: (value) {
      if (value == null) {
        return "Field can not be left empty";
      } else if (value.isEmpty) {
        return "Field can not be left empty";
      } else if (value.indexOf(' ')==0){
        return 'Can not contain whitespaces';
      }else {
        return null;
      }
    },
  );
}
