import 'package:book_user/widgets/loader.dart';
import 'package:flutter/widgets.dart';
import 'package:video_player/video_player.dart';

class Page_View extends StatefulWidget {
  var data;

  Page_View({required this.data});

  @override
  State<Page_View> createState() => _Page_ViewState();
}

class _Page_ViewState extends State<Page_View> {
  late VideoPlayerController _controller;
  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(widget.data)
      ..initialize().then((_) {
        setState(() {});
      });
    _controller.play();
    _controller.setVolume(2.0);
    _controller.setLooping(true);
  }

  @override
  Widget build(BuildContext context) {
    var data = widget.data;
    if (data != "") {
      return GestureDetector(
        onTap: () {
          if (_controller.value.isPlaying) {
            _controller.pause();
          } else {
            _controller.play();
          }
        },
        child: SizedBox.expand(
            child: FittedBox(
          fit: BoxFit.cover,
          child: SizedBox(
            width: _controller.value.size.width ?? 0,
            height: _controller.value.size.height ?? 0,
            child: VideoPlayer(_controller),
          ),
        )),
      );
    } else {
      return Loader;
    }
  }
}
