import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(color: Colors.white, blurRadius: 5, spreadRadius: 5)
        ],
        borderRadius: BorderRadius.circular(10),
        color: Colors.red[400],
        image: const DecorationImage(
          image: AssetImage('assets/images/s.jpg'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
