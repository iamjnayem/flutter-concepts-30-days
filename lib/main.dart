import 'package:flutter/material.dart';
import 'package:ui_concept/widgets/Container_Sized.dart';
import 'package:ui_concept/widgets/rowscols.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.deepOrange,
      ),
      home: Rowscols(),
    );
  }
}
