import 'package:flutter/material.dart';

class HomePage_Bottom extends StatefulWidget {
  const HomePage_Bottom({Key? key}) : super(key: key);

  @override
  State<HomePage_Bottom> createState() => _HomePage_BottomState();
}

class _HomePage_BottomState extends State<HomePage_Bottom> {
  @override
  Widget build(BuildContext context) {
    var fullWitdh = MediaQuery.of(context).size.width;

    return Container(
      color: Colors.transparent,
      child: SizedBox(
          height: 70,
          child: Row(children: [
            withGetRenderIcon(
              icon: Icons.home,
              width: fullWitdh * 0.20,
            ),
            withGetRenderIcon(
              icon: Icons.search,
              width: fullWitdh * 0.20,
            ),
            withGetRenderIcon(
              icon: Icons.home,
              width: fullWitdh * 0.20,
            )
          ])),
    );
  }

  Widget withGetRenderIcon(
      {required IconData icon,
      Color color = Colors.white,
      int? index,
      required double width}) {
    return SizedBox(width: width, child: Icon(icon, color: color));
  }
}
