import 'package:flutter/material.dart';
import 'package:ui_concept/widgets/Container_Sized.dart';
import 'package:ui_concept/widgets/button.dart';
import 'package:ui_concept/widgets/dismissiable.dart';
import 'package:ui_concept/widgets/drawer.dart';
import 'package:ui_concept/widgets/list_grid.dart';
import 'package:ui_concept/widgets/rowscols.dart';
import 'package:ui_concept/widgets/snackbar.dart';

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
      home: DrawerWidget(),
    );
  }
}
