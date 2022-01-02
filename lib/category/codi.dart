import 'package:demo_ver_1_2_0/apps/codiContainer.dart';
import 'package:flutter/material.dart';

class Codi extends StatelessWidget {
  const Codi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: CodiContainer(
      order: [2, 0, 1, 3, 5, 4],
    ));
  }
}
