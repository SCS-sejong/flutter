import 'package:demo_ver_1_2_0/apps/codiPost.dart';
import 'package:demo_ver_1_2_0/codi_info_page.dart';
import 'package:flutter/material.dart';
import 'package:demo_ver_1_2_0/models/post.dart';

List<Post> postList = [
  Post(
      key: 0,
      title: '인스타 하이',
      body: '인스타 시작',
      picUrl:
          'https://firebasestorage.googleapis.com/v0/b/scswebhosting.appspot.com/o/51042738_371116803470059_2034713457685634749_n.jpg?alt=media&token=092e722e-b214-4dec-96b9-f9b76422bb7e',
      authorName: 'haiseong',
      like: 60),
  Post(
      key: 1,
      title: '넌 악수를 못하니',
      body: '인스타 2',
      picUrl:
          'https://firebasestorage.googleapis.com/v0/b/scswebhosting.appspot.com/o/65114017_2266106610172293_1962250189865018686_n.jpg?alt=media&token=e24f4117-55e3-4112-8397-c37c7a75bb92',
      authorName: 'haiseong',
      like: 160),
  Post(
      key: 2,
      title: '새벽 안개',
      body: '인스타 3',
      picUrl:
          'https://firebasestorage.googleapis.com/v0/b/scswebhosting.appspot.com/o/198949434_918352709009429_6477679760928095448_n.jpg?alt=media&token=7d4d1f2b-3f62-4520-9920-b5c2d43bf5ef',
      authorName: 'haiseong',
      like: 610),
  Post(
      key: 3,
      title: '수원행차',
      body: '인스타 4',
      picUrl:
          'https://firebasestorage.googleapis.com/v0/b/scswebhosting.appspot.com/o/241178197_1867335076770651_3808682616523997307_n.jpg?alt=media&token=5565dcfe-af8f-49f3-b937-fd732e149f64',
      authorName: 'haiseong',
      like: 320),
  Post(
      key: 4,
      title: '노을 사냥꾼',
      body: '인스타 5',
      picUrl:
          'https://firebasestorage.googleapis.com/v0/b/scswebhosting.appspot.com/o/241717973_173741751558738_118209412942002953_n.jpg?alt=media&token=f646a000-a9ac-4a39-8790-fde0c46951d0',
      authorName: 'haiseong',
      like: 2320),
  Post(
      key: 5,
      title: '비싸서 옷은 못샀습니다.',
      body: '인스타 6',
      picUrl:
          'https://firebasestorage.googleapis.com/v0/b/scswebhosting.appspot.com/o/266182302_1224626858066309_5673014221934290104_n.jpg?alt=media&token=c0579977-dd68-41e6-aec7-8a09c9e6ca11',
      authorName: 'haiseong',
      like: 2320),
];

class CodiContainer extends StatelessWidget {
  const CodiContainer({Key? key, required this.order}) : super(key: key);

  final List<int> order;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
              flex: 1,
              child: Column(children: [
                CodiPost(index: order[0], imgSorce: postList[order[0]].picUrl),
                CodiPost(index: order[1], imgSorce: postList[order[1]].picUrl),
                CodiPost(index: order[2], imgSorce: postList[order[2]].picUrl)
              ])),
          Expanded(
            flex: 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CodiPost(index: order[3], imgSorce: postList[order[3]].picUrl),
                CodiPost(index: order[4], imgSorce: postList[order[4]].picUrl),
                CodiPost(index: order[5], imgSorce: postList[order[5]].picUrl)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
