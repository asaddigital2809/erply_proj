import 'package:flutter/material.dart';
import 'package:practice_graphql/view/registration.dart';
import 'package:practice_graphql/view/show_data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  const DataScreen(),
    );
  }
}
