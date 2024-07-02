import 'package:flutter/material.dart';

class Container_Sized extends StatelessWidget {
  const Container_Sized({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Container & SizedBox'),
        backgroundColor: Colors.orange,
      ),
      body: Center(
        child: Container(
          height: 100,
          width: 100,
          decoration: const BoxDecoration(
            color: Colors.purple,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), bottomRight: Radius.circular(20)),
            boxShadow: [
              BoxShadow(
                color: Colors.white,
                spreadRadius: 10,
                blurRadius: 15,
              ),
            ],
          ),
          child: Container(
            width: 100,
            height: 200,
            // padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.all(15),
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}
