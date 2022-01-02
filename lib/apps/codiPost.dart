import 'package:flutter/material.dart';
import 'package:demo_ver_1_2_0/models/post.dart';
import 'package:demo_ver_1_2_0/codi_info_page.dart';

class CodiPost extends StatelessWidget {
  const CodiPost({Key? key, required this.index, required this.imgSorce})
      : super(key: key);

  final int index;
  final String imgSorce;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => CodiInfoPage(
                    title: 'POST', index: index, imgSorce: imgSorce)));
      },
      child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: Hero(
              tag: 'post' + index.toString(),
              child: Image(
                image: NetworkImage(imgSorce),
                width: 200,
              ),
            ),
          )),
    );
  }
}
