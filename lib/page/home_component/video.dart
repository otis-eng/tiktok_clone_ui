import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

import '../../models/video.dart';

class Video_Play extends StatefulWidget {
  @override
  _VideoAppState createState() => _VideoAppState();
}

class _VideoAppState extends State<Video_Play> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(
        'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4')
      ..initialize().then((_) {
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return Container(color: Colors.red);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}

// Widget feedVideos() {
//     return Stack(
//       children: [
//         PageView.builder(
//           controller: PageController(
//             initialPage: 0,
//             viewportFraction: 1,
//           ),
//           itemCount:5,
//           onPageChanged: (index) {
//             index = index % (feedViewModel.videoSource!.listVideos.length);
//             feedViewModel.changeVideo(index);
//           },
//           scrollDirection: Axis.vertical,
//           itemBuilder: (context, index) {
//             index = index % (feedViewModel.videoSource!.listVideos.length);
//             return videoCard(feedViewModel.videoSource!.listVideos[index]);
//           },
//         ),
//         SafeArea(
//           child: Container(
//             padding: const EdgeInsets.only(top: 20),
//             child: Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: <Widget>[
//                   const Text('Following',
//                       style: TextStyle(
//                           fontSize: 17.0,
//                           fontWeight: FontWeight.normal,
//                           color: Colors.white70)),
//                   const SizedBox(
//                     width: 7,
//                   ),
//                   Container(
//                     color: Colors.white70,
//                     height: 10,
//                     width: 1.0,
//                   ),
//                   const SizedBox(
//                     width: 7,
//                   ),
//                   const Text('For You',
//                       style: TextStyle(
//                           fontSize: 17.0,
//                           fontWeight: FontWeight.bold,
//                           color: Colors.white))
//                 ]),
//           ),
//         ),
//       ],
//     );
//   }

// Widget currentScreen() {
//   switch (feedViewModel.actualScreen) {
//     case 0:
//       return feedVideos();
//     case 1:
//       return SearchScreen();
//     case 2:
//       return MessagesScreen();
//     case 3:
//       return ProfileScreen();
//     default:
//       return feedVideos();
//   }
// }

Widget videoCard(Video video) {
  return Stack(
    children: [
      video.controller != null
          ? GestureDetector(
              onTap: () {
                if (video.controller!.value.isPlaying) {
                  video.controller?.pause();
                } else {
                  video.controller?.play();
                }
              },
              child: SizedBox.expand(
                  child: FittedBox(
                fit: BoxFit.cover,
                child: SizedBox(
                  width: video.controller?.value.size.width ?? 0,
                  height: video.controller?.value.size.height ?? 0,
                  child: VideoPlayer(video.controller!),
                ),
              )),
            )
          : Container(
              color: Colors.black,
              child: const Center(
                child: Text("Loading"),
              ),
            )
      // Column(
      //   mainAxisAlignment: MainAxisAlignment.end,
      //   children: <Widget>[
      //     Row(
      //       mainAxisSize: MainAxisSize.max,
      //       crossAxisAlignment: CrossAxisAlignment.end,
      //       children: <Widget>[
      //         VideoDescription(video.user, video.videoTitle, video.songName),
      //         ActionsToolbar(video.likes, video.comments,
      //             "https://www.andersonsobelcosmetic.com/wp-content/uploads/2018/09/chin-implant-vs-fillers-best-for-improving-profile-bellevue-washington-chin-surgery.jpg"),
      //       ],
      //     ),
      //     SizedBox(height: 20)
      //   ],
      // ),
    ],
  );
}

  // @override
  // void dispose() {
  //   feedViewModel.controller?.dispose();
  //   super.dispose();
  // }

