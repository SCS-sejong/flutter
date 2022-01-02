import 'package:flutter/material.dart';
import 'package:demo_ver_1_2_0/models/post.dart';
import 'package:demo_ver_1_2_0/apps/codiContainer.dart';

class CodiInfoPage extends StatefulWidget {
  const CodiInfoPage(
      {Key? key,
      required this.title,
      required this.index,
      required this.imgSorce})
      : super(key: key);

  final String title;
  final int index;
  final String imgSorce;

  @override
  State<CodiInfoPage> createState() => _CodiInfoPageState();
}

class _CodiInfoPageState extends State<CodiInfoPage> {
  @override
  Widget build(BuildContext context) {
    Post post = postList[widget.index];
    return Scaffold(
        appBar: AppBar(
            title: Text(widget.title),
            backgroundColor: Colors.white,
            titleTextStyle: const TextStyle(color: Colors.black, fontSize: 30),
            centerTitle: true,
            elevation: 0.0,
            leading: IconButton(
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.black87,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            )),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Hero(
                  tag: 'post' + post.key.toString(),
                  child: Image(
                      width: double.infinity, image: NetworkImage(post.picUrl)),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            post.authorName,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(post.title),
                        ],
                      ),
                      Row(children: [
                        Text(
                          post.like.toString(),
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Icon(
                          Icons.favorite_sharp,
                          color: Colors.red[400],
                          size: 20,
                        ),
                      ])
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
