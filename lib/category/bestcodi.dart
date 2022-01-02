import 'package:demo_ver_1_2_0/apps/codiContainer.dart';
import 'package:flutter/material.dart';

class BestCodi extends StatelessWidget {
  const BestCodi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: CodiContainer(
      order: [5, 4, 3, 2, 1, 0],
    ));
  }
}
