import 'package:book_user/page/home_component/bottom.dart';
import 'package:book_user/page/hompeage.dart';
import 'package:book_user/utils/checkPlatfrom.dart';
import 'package:book_user/utils/scroll.controller.dart';
import 'package:flutter/material.dart';

void main() => runApp(
      const MyApp(),
    );

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const title = '';
    return MaterialApp(
      scrollBehavior: AppScrollBehavior(),
      debugShowCheckedModeBanner: false,
      title: title,
      home: const MyHomePage(
        title: title,
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
    required this.title,
  });

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController _controller = TextEditingController();
  // final _channel = WebSocketChannel.connect(
  //   Uri.parse('ws://localhost:3000'),
  // );

  @override
  Widget build(BuildContext context) {
    String os = CheckPlatfrom();
    print("os$os");

    return Scaffold(
        // appBar: AppBar
        //   title: Text(widget.title),
        // ),

        body: Stack(
      children: const [
        Home(),
        Align(
          alignment: Alignment.bottomCenter,
          child: HomePage_Bottom(),
        )
      ],
    )

        // floatingActionButton: FloatingActionButton(
        //   onPressed: _sendMessage,
        //   tooltip: 'Send message',
        //   child: const Icon(Icons.send),
        // ), // This trailing comma makes auto-formatting nicer for build methods.
        );
  }

  // void _sendMessage() {
  //   if (_controller.text.isNotEmpty) {
  //     _channel.sink.add(json.encode({"data": _controller.text}));
  //   }
  // }

  @override
  void dispose() {
    // _channel.sink.close();
    _controller.dispose();
    super.dispose();
  }
}
