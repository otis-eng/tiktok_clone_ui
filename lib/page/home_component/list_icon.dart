import 'package:flutter/material.dart';

import '../../models/video.dart';

class List_Audio extends StatefulWidget {
  Video video;
  List_Audio({required this.video});

  @override
  State<List_Audio> createState() => _List_AudioState();
}

class _List_AudioState extends State<List_Audio> {
  @override
  Widget build(BuildContext context) {
    var video = widget.video;

    return Align(
      alignment: Alignment.bottomRight,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
            alignment: const Alignment(0, 0),
            decoration: const BoxDecoration(color: Colors.transparent),
            margin: const EdgeInsets.only(top: 150),
            width: MediaQuery.of(context).size.width * 0.15,
            child:
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
              Render_Icon(
                  icon: Icons.favorite,
                  mount: video.like?.count,
                  color: Colors.red),
              Render_Icon(icon: Icons.comment, mount: video.like?.count),
              const Render_Icon(icon: Icons.bookmark),
              const Render_Icon(icon: Icons.ios_share),
            ])),
      ),
    );
  }
}

class Render_Icon extends StatelessWidget {
  const Render_Icon({
    required this.icon,
    this.mount,
    this.color = Colors.white,
  });

  final icon;
  final color;
  final mount;
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(bottom: 20),
        child: Column(
          children: [
            Icon(icon, color: color, size: 30.0),
            mount != null ? Text(mount.toString()) : Container()
          ],
        ));
  }
}
