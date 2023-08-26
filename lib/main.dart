import 'package:flutter/material.dart';
import 'package:listdatademo/griddata.dart';
//import 'package:listdatademo/listdata.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      //home: ListData(),
      home: GridListData(),
    );
  }
}