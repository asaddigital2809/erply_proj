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
Widget defaultTextFieldNumber(TextEditingController callback, String title) {
  return TextFormField(
    inputFormatters: [
      FilteringTextInputFormatter.allow(RegExp(r"[a-zA-Z0-9]+|\s"))
    ],
    style: const TextStyle(color: Colors.grey),    controller: callback,
    decoration: InputDecoration(
      contentPadding:
      const EdgeInsets.only(left: 14.0, bottom: 8.0, top: 8.0),
      focusedBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: Colors.white),
      ),
      enabledBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: Colors.white),
      ),
      filled: true,
      labelStyle: const TextStyle(color: Colors.grey),
      labelText: title,
      counterText: '',
      fillColor: Colors.transparent,
    ),

    keyboardType: TextInputType.number,
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
Widget defaultTextFieldName(TextEditingController callback, String title) {
  return TextFormField(
    inputFormatters: [
      FilteringTextInputFormatter.allow(RegExp(r"[a-zA-Z0-9]+|\s"))
    ],
    style: const TextStyle(color: Colors.grey),    controller: callback,
    decoration: InputDecoration(
      contentPadding:
      const EdgeInsets.only(left: 14.0, bottom: 8.0, top: 8.0),
      focusedBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: Colors.white),
      ),
      enabledBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: Colors.white),
      ),
      filled: true,
      labelStyle: const TextStyle(color: Colors.grey),
      labelText: title,
      counterText: '',
      fillColor: Colors.transparent,
    ),

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
Widget defaultTextFieldPass(TextEditingController callback, String title) {
  return TextFormField(
    obscureText: true,
    style: const TextStyle(color: Colors.grey),    controller: callback,
    decoration: InputDecoration(
      contentPadding:
      const EdgeInsets.only(left: 14.0, bottom: 8.0, top: 8.0),
      focusedBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: Colors.white),
      ),
      enabledBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: Colors.white),
      ),
      filled: true,
      labelStyle: const TextStyle(color: Colors.grey),
      labelText: title,
      counterText: '',
      fillColor: Colors.transparent,
    ),

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
