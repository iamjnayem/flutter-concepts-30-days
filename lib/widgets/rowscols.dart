import 'package:flutter/material.dart';
import 'dart:math';

class Rowscols extends StatelessWidget {
  const Rowscols({super.key});

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    var iconColors = [
      Colors.red,
      Colors.green,
      Colors.blue,
      Colors.yellow,
      Colors.pink,
      Colors.purple,
      Colors.orange,
      Colors.brown,
      Colors.black,
    ];
    var random = Random();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Rows and Columns'),
      ),
      body: Container(
        width: w,
        height: 500,
        color: Colors.blue,
        child: Wrap(
          direction: Axis.vertical,
          alignment: WrapAlignment.end,
          children: [
            for (var i = 0; i < 8; i++)
              Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                    color: iconColors[random.nextInt(iconColors.length)],
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                margin: const EdgeInsets.all(5),
              ),
          ],
        ),
      ),
    );
  }
}
