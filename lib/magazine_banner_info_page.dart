import 'package:flutter/material.dart';

class MagazineBannerInfoPage extends StatefulWidget {
  const MagazineBannerInfoPage(
      {Key? key, required this.title, required this.index})
      : super(key: key);

  final String title;
  final int index;

  @override
  State<MagazineBannerInfoPage> createState() => _MagazineBannerInfoPageState();
}

class _MagazineBannerInfoPageState extends State<MagazineBannerInfoPage> {
  @override
  Widget build(BuildContext context) {
    int index = widget.index; // 이미지 index를 Hero의 tag값으로 사용
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
          child: Column(
            children: [
              Hero(
                tag: '$index', // 이미지 주소값을 Hero의 tag값으로 사용
                child: Image(
                  width: double.infinity,
                  image: AssetImage('image/banner/banner$index.jpg'),
                ),
              ),
            ],
          ),
        ));
  }
}
