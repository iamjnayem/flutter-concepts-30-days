import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class NetworkImageWidget extends StatelessWidget {
  const NetworkImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var url = 'https://picsum.photos/200/200';
    return Container(
      width: 100,
      height: 100,
      // decoration: const BoxDecoration(
      //   image: DecorationImage(
      //     image: NetworkImage('https://picsum.photos/200/300'),
      //     fit: BoxFit.cover,
      //   ),
      // ),

      child: CachedNetworkImage(
        imageUrl: url,
        fit: BoxFit.cover,
        placeholder: (context, url) => const Center(
          child: CircularProgressIndicator(),
        ),
        errorWidget: (context, url, error) => Icon(Icons.error),
      ),
    );
  }
}
