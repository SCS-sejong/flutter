import 'package:carousel_slider/carousel_slider.dart';
import 'package:demo_ver_1_2_0/magazine_banner_info_page.dart';
import 'package:flutter/material.dart';

class MagazineBanner extends StatefulWidget {
  const MagazineBanner({Key? key}) : super(key: key);

  @override
  State<MagazineBanner> createState() => _MagazineBannerState();
}

class _MagazineBannerState extends State<MagazineBanner> {
  final List<String> bannerImgList = [
    'image/banner/banner0.jpg',
    'image/banner/banner1.jpg',
    'image/banner/banner2.jpg',
    'image/banner/banner3.jpg',
    'image/banner/banner4.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      options: CarouselOptions(
        height: 150,
        autoPlay: true,
        viewportFraction: 1.0,
      ),
      itemCount: bannerImgList.length,
      itemBuilder: (context, index, readIndex) {
        final bannerImg = bannerImgList[index];
        return buildImage(bannerImg, index);
      },
    );
  }
}

Widget buildImage(String bannerImg, int index) => Builder(builder: (context) {
      return GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) =>
                      MagazineBannerInfoPage(title: 'Banner', index: index)));
        },
        child: Hero(
          tag: '$index',
          child: Image(
            image: AssetImage(bannerImg),
            fit: BoxFit.cover,
          ),
        ),
      );
    });
