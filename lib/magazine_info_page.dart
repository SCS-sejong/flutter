import 'package:flutter/material.dart';

class MagazineInfoPage extends StatefulWidget {
  const MagazineInfoPage(
      {Key? key, required this.title, required this.imgSorce})
      : super(key: key);

  final String title;
  final String imgSorce;

  @override
  State<MagazineInfoPage> createState() => _MagazineInfoPageState();
}

class _MagazineInfoPageState extends State<MagazineInfoPage> {
  // final String imgSorce =
  //     'http://t1.daumcdn.net/brunch/service/user/56Mv/image/U_nkfPAyQkUJBLYCiRNCjbx5buk.jpg';

  @override
  Widget build(BuildContext context) {
    String wigetImgSorce = widget.imgSorce; // 이미지 주소값을 Hero의 tag값으로 사용
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
                tag: wigetImgSorce, // 이미지 주소값을 Hero의 tag값으로 사용
                child: Image(
                    width: double.infinity,
                    image: NetworkImage(super.widget.imgSorce)),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'VOGUE',
                      style: TextStyle(
                        fontSize: 30,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text('FEE : ₩10,000'),
                    Text(
                        '《보그》(Vogue)는 패션, 미용, 문화, 생활, 런웨이를 포함한 많은 주제를 다루는 미국의 월간 패션 및 라이프스타일 잡지이다. 매달, 보그는 패션, 삶과 디자인의 화제를 다룬다. 《보그》는 1892년 아서 볼드윈 투르누레(Arthur Baldwin Turnure)가 주간지로 창간하여, 1909년 그의 사후 콘데 나스트가 인수하면서 출판을 확장하였다. 콘데 나스트는 보그의 인수 직후 주간지에서 격주간지로 바꿨으며, 1916년 창간된 영국 보그(Vogue)는 최초의 국제판이었고 이탈리아판 보그 이탈리아는 세계 최고의 패션잡지[1]로 불렸다. 1973년 월간지로 전환하였으며 사진과 디자인에 대한 과감한 투자로 현재까지도 패션 산업과 문화, 예술 전반에 걸쳐 그 영향력을 인정받고 있다. 현재 26개의 국제판이 있다.')
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
