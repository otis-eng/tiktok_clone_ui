import 'dart:convert';

import 'package:book_user/page/home_component/feed_page.dart';
import 'package:book_user/utils/socket_channel.dart';
import 'package:flutter/material.dart';

import '../../models/video.dart';
import '../../widgets/loader.dart';

class HomePage_Body extends StatefulWidget {
  const HomePage_Body({Key? key}) : super(key: key);

  @override
  State<HomePage_Body> createState() => _HomePage_BodyState();
}

class _HomePage_BodyState extends State<HomePage_Body> {
  var data;
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: SocketChannel.listen(),
      builder: (context, snapshot) {
        print(snapshot.connectionState);
        if (snapshot.hasData) {
          data = json.decode(snapshot.data.toString());
          List<Video> videos =
              List<Video>.from(data.map((e) => (Video.fromJson(e)))).toList();
          return PageView.builder(
              itemCount: videos.length,
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) {
                return Feed_Page(video: videos[index]);
              });
        } else if (snapshot.error != null) {
          return Text(snapshot.error.toString());
        } else {
          return Loader;
        }
      },
    );
  }
}
