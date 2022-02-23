
import 'package:flutter/cupertino.dart';
import '../../methods/string_ext.dart';

Widget customText(text,double size,Color color,FontWeight weight){
  return Text(
    text.toString().capitalizeFirstOfEach.inCaps,
    style: TextStyle(
        fontSize: size,
        color: color,
        fontWeight: weight
    ),
  );
}
Widget headingText(text,double size,Color color,FontWeight weight){
  return Text(
    text ?? "",
    style: TextStyle(
        fontSize: size,
        color: color,
        fontWeight: weight
    ),
  );
}
Widget headingTextThree(text,double size,Color color,FontWeight weight){
  return Text(
    text ?? "",
    style: TextStyle(
        fontSize: size,
        color: color,
        fontWeight: weight,
        fontStyle: FontStyle.italic
    ),
  );
}
Widget headingTextTwo(text,double size,Color color,FontWeight weight){
  return Text(
    text ?? "",
    style: TextStyle(
        fontSize: size,
        color: color,
        fontWeight: weight
    ),
    textAlign: TextAlign.center,
  );
}

Widget summaryText(text,double size,Color color,FontWeight weight){
  return Text(
    text.toString().capitalizeFirstOfEach.inCaps,
    style: TextStyle(
      fontSize: size,
      color: color,
      fontWeight: weight,
    ),
    textAlign: TextAlign.justify,
  );
}

