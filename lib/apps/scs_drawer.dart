import 'package:flutter/material.dart';

class ScsDrawer extends StatefulWidget {
  const ScsDrawer({Key? key}) : super(key: key);

  @override
  State<ScsDrawer> createState() => _ScsDrawerState();
}

class _ScsDrawerState extends State<ScsDrawer> {
  final String userName = '정해성';
  final String userImgSrc =
      'https://scontent-ssn1-1.cdninstagram.com/v/t51.2885-15/sh0.08/e35/s640x640/51042738_371116803470059_2034713457685634749_n.jpg?_nc_ht=scontent-ssn1-1.cdninstagram.com&_nc_cat=107&_nc_ohc=lfuPQaxLBKcAX_Jcxi0&tn=JsSFEXcGcmucQSlq&edm=AP_V10EBAAAA&ccb=7-4&oh=00_AT8MRPrwmp9iZxiISdl2vXClDLHxQsu7-vU8gdqRvd6wQQ&oe=61D0AC41&_nc_sid=4f375e';

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(color: Colors.black87),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    //
                    CircleAvatar(
                      backgroundImage: NetworkImage(userImgSrc),
                      radius: 30.0,
                    ),
                    const SizedBox(width: 10),
                    Text(
                      '$userName님',
                      style:
                          const TextStyle(color: Colors.white, fontSize: 15.0),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
