import 'package:carousel_slider/carousel_slider.dart';
import 'package:demo_ver_1_2_0/magazine_info_page.dart';
import 'package:flutter/material.dart';

class MagazineSlider extends StatefulWidget {
  const MagazineSlider({Key? key}) : super(key: key);

  @override
  _MagazineSliderState createState() => _MagazineSliderState();
}

class _MagazineSliderState extends State<MagazineSlider> {
  final List<String> magazineImgList = [
    'http://t1.daumcdn.net/brunch/service/user/56Mv/image/U_nkfPAyQkUJBLYCiRNCjbx5buk.jpg',
    'http://t1.daumcdn.net/brunch/service/user/56Mv/image/XiTYapPb9XlHXJxCUWsuAx-C08M.png',
    'https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2FouWTH%2FbtqInr9p5gh%2FWIy3UUv5blCgeuHvLKMs7k%2Fimg.jpg',
    'https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2Fcfp2eN%2FbtqInOwyu9H%2FSrAvZvGxI8Qkwrv1ywWMXk%2Fimg.jpg',
    'https://media.vingle.net/images/ca_l/q7f0uzu73q.jpg',
    'https://media.vingle.net/images/ca_l/fz6hzu34ku.jpg',
    'https://media.vingle.net/images/ca_l/1lo8txmksu.jpg',
    'https://media.vingle.net/images/ca_l/p7w6ywygu1.jpg',
    'https://media.vingle.net/images/ca_l/x98gl445m3.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: const [
            SizedBox(
              width: 15,
            ),
            Text(
              'MAGAZINE',
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        CarouselSlider.builder(
          options: CarouselOptions(
              height: 450,
              autoPlay: false,
              viewportFraction: 0.8,
              pauseAutoPlayInFiniteScroll: true),
          itemCount: magazineImgList.length,
          itemBuilder: (context, index, readIndex) {
            final magazineImg = magazineImgList[index];
            return buildImage(magazineImg, index);
          },
        ),
      ],
    );
  }
}

Widget buildImage(String imgSorce, int index) => Builder(builder: (context) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => MagazineInfoPage(
                        title: 'MAGAZINE', imgSorce: imgSorce)));
          },
          child: Hero(
            tag: imgSorce,
            child: Image(
              image: NetworkImage(imgSorce),
              fit: BoxFit.fill,
            ),
          ),
        ),
      );
    });
