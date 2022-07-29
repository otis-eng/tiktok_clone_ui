import 'package:book_user/page/home_component/page_view.dart';
import 'package:flutter/widgets.dart';

import '../../models/video.dart';
import 'list_icon.dart';

class Feed_Page extends StatefulWidget {
  Video video;
  Feed_Page({required this.video});

  @override
  State<Feed_Page> createState() => _Feed_PageState();
}

class _Feed_PageState extends State<Feed_Page> {
  @override
  Widget build(BuildContext context) {
    final video = widget.video;

    return Container(
        child: Stack(children: [
      Page_View(
        data: video.videoLink,
      ),
      List_Audio(video: video),
    ]));
  }
}
