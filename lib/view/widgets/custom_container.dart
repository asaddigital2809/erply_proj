import 'package:flutter/cupertino.dart';

Widget defaultContainer(Color color,Widget widget,double height,double width){
  return Container(
    height: height,
    width: width,
    decoration: BoxDecoration(
      color: color
    ),
    child: widget,
  );
}