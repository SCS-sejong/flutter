import 'dart:math';

import 'package:demo_ver_1_2_0/apps/codiContainer.dart';
import 'package:demo_ver_1_2_0/apps/magazine_banner.dart';
import 'package:demo_ver_1_2_0/apps/magazine_slider.dart';
import 'package:flutter/material.dart';

class Magazine extends StatefulWidget {
  const Magazine({Key? key}) : super(key: key);

  @override
  State<Magazine> createState() => _MagazineState();
}

class _MagazineState extends State<Magazine> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top: 5.0, bottom: 50.0),
        child: Column(
          children: const [
            MagazineBanner(),
            SizedBox(
              height: 50,
            ),
            MagazineSlider(),
            SizedBox(
              height: 50,
            ),
            CodiContainer(order: [0, 4, 2, 5, 3, 1])
          ],
        ),
      ),
    );
  }
}
