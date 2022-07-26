import 'package:flutter/material.dart';

class List_Audio extends StatefulWidget {
  const List_Audio({Key? key}) : super(key: key);

  @override
  State<List_Audio> createState() => _List_AudioState();
}

class _List_AudioState extends State<List_Audio> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomRight,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
            alignment: const Alignment(0, 0),
            decoration: const BoxDecoration(color: Colors.transparent),
            margin: const EdgeInsets.only(top: 200),
            width: MediaQuery.of(context).size.width * 0.15,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Render_Icon(icon: Icons.heart_broken, color: Colors.red),
                  Render_Icon(icon: Icons.comment),
                  Render_Icon(icon: Icons.bookmark),
                  Render_Icon(icon: Icons.ios_share),
                ])),
      ),
    );
  }
}

class Render_Icon extends StatelessWidget {
  const Render_Icon({required this.icon, this.color = Colors.white});

  final icon;
  final color;
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(bottom: 30),
        child: Icon(icon, color: color, size: 35.0));
  }
}
