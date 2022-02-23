import 'package:flutter/cupertino.dart';

Widget defaultContainer(Color color,Widget widget,double height,double width){
  return Container(
    height: height,
    width: width,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(5),
      color: color
    ),
    child: widget,
  );
}