import 'package:book_user/page/home_component/video.dart';
import 'package:flutter/widgets.dart';

import 'list_icon.dart';

class Feed_Page extends StatefulWidget {
  const Feed_Page({Key? key}) : super(key: key);

  @override
  State<Feed_Page> createState() => _Feed_PageState();
}

class _Feed_PageState extends State<Feed_Page> {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(bottom: 80),
        child: Stack(children: [Video_Play(), const List_Audio()]));
  }
}
