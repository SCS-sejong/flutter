import 'package:demo_ver_1_2_0/apps/talkContainer.dart';
import 'package:flutter/material.dart';

class Talk extends StatelessWidget {
  const Talk({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top: 5.0),
        child: SingleChildScrollView(
            child: TalkContainer(
          order: [2, 0, 1, 3, 5, 4],
        )),
      ),
    );
  }
}
