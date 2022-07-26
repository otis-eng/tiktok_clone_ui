import 'package:flutter/material.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

import '../../widgets/loader.dart';

class HomePage_Body extends StatefulWidget {
  const HomePage_Body({Key? key}) : super(key: key);

  @override
  State<HomePage_Body> createState() => _HomePage_BodyState();
}

class _HomePage_BodyState extends State<HomePage_Body> {
  final web_socket_channel = WebSocketChannel.connect(
    Uri.parse('ws://localhost:3000'),
  );
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: web_socket_channel.stream,
      builder: (context, snapshot) {
        return snapshot.hasData ? Container(color: Colors.black) : Loader;
      },
    );
  }
}
