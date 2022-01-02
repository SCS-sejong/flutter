import 'package:flutter/material.dart';

class Share extends StatelessWidget {
  const Share({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top: 5.0),
        child: Column(
          children: const [Text('SHARE')],
        ),
      ),
    );
  }
}
