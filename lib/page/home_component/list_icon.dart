import 'package:cached_network_image/cached_network_image.dart';
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
            margin: const EdgeInsets.only(bottom: 100),
            width: MediaQuery.of(context).size.width * 0.15,
            child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
              getAvatarProfile(),
              Render_Icon(
                  icon: Icons.favorite,
                  mount: video.like?.count,
                  color:
                      video.like?.isLike == true ? Colors.red : Colors.white),
              Render_Icon(icon: Icons.comment, mount: video.like?.count),
              const Render_Icon(icon: Icons.bookmark),
              const Render_Icon(icon: Icons.ios_share),
            ])),
      ),
    );
  }

  Widget _getProfilePicture() {
    return ClipOval(
      child: CachedNetworkImage(
          width: 50,
          height: 50,
          fit: BoxFit.fill,
          imageUrl:
              'https://res.cloudinary.com/phankieuphuicloud/image/upload/v1650900941/img_shdh1l.png',
          placeholder: (context, url) => const CircularProgressIndicator(),
          errorWidget: (context, url, error) => const Icon(Icons.error)),
    );
  }

  Widget _getPlusIcon() {
    return const Positioned(
      bottom: -5,
      left: 15,
      child: Icon(
        Icons.add,
        color: Colors.red,
      ),
    );
  }

  Widget getAvatarProfile() {
    return Stack(
      children: [_getProfilePicture(), _getPlusIcon()],
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
