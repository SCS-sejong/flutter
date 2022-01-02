import 'package:demo_ver_1_2_0/apps/scs_drawer.dart';
import 'package:demo_ver_1_2_0/category/bestcodi.dart';
import 'package:demo_ver_1_2_0/category/closet.dart';
import 'package:demo_ver_1_2_0/category/codi.dart';
import 'package:demo_ver_1_2_0/category/magazine.dart';
import 'package:demo_ver_1_2_0/category/qna.dart';
import 'package:demo_ver_1_2_0/category/share.dart';
import 'package:demo_ver_1_2_0/category/talk.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 7,
      child: Scaffold(
          appBar: AppBar(
            title: Text(widget.title),
            backgroundColor: Colors.white,
            titleTextStyle: const TextStyle(color: Colors.black, fontSize: 30),
            centerTitle: true,
            elevation: 0.0,
            leading: Builder(builder: (context) {
              return IconButton(
                icon: Icon(
                  Icons.menu,
                  color: Colors.grey[900],
                ),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
              );
            }),
            bottom: const TabBar(
              isScrollable: true,
              tabs: [
                Tab(
                  text: 'MAGAZINE',
                ),
                Tab(
                  text: 'CLOSET',
                ),
                Tab(
                  text: 'SHARE',
                ),
                Tab(
                  text: 'BESTCODI',
                ),
                Tab(
                  text: 'CODI',
                ),
                Tab(
                  text: 'TALK',
                ),
                Tab(
                  text: 'Q&A',
                )
              ],
            ),
          ),
          drawer: const ScsDrawer(),
          body: const TabBarView(
              physics: NeverScrollableScrollPhysics(),
              children: [
                Magazine(),
                Closet(),
                Share(),
                BestCodi(),
                Codi(),
                Talk(),
                QNA()
              ])),
    );
  }
}
