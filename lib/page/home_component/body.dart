import 'package:book_user/page/home_component/list_icon.dart';
import 'package:book_user/page/home_component/video.dart';
import 'package:flutter/widgets.dart';

class HomePage_Body extends StatefulWidget {
  const HomePage_Body({Key? key}) : super(key: key);

  @override
  State<HomePage_Body> createState() => _HomePage_BodyState();
}

class _HomePage_BodyState extends State<HomePage_Body> {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(bottom: 80),
        child: Stack(children: [Video_Play(), const List_Audio()]));
  }
}
