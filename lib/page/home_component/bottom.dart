import 'package:book_user/utils/socket_channel.dart';
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
            RenderBottomIcon(
              icon: Icons.home,
              width: fullWitdh * 0.2,
            ),
            RenderBottomIcon(
              icon: Icons.search,
              width: fullWitdh * 0.2,
            ),
            customCreateIcon(fullWitdh * 0.2),
            RenderBottomIcon(
              icon: Icons.search,
              width: fullWitdh * 0.2,
            ),
            RenderBottomIcon(
              icon: Icons.account_balance,
              width: fullWitdh * 0.2,
            )
          ])),
    );
  }

  Widget RenderBottomIcon(
      {required IconData icon,
      Color color = Colors.white,
      int? index,
      required double width}) {
    return SizedBox(width: width, child: Icon(icon, color: color));
  }

  Widget customCreateIcon(double width) {
    return SizedBox(
        width: width,
        // height: 27.0,
        child: InkWell(
          onTap: () {
            SocketChannel.send("test on tap");
          },
          child: Stack(children: [
            Container(
                margin: const EdgeInsets.only(left: 10.0),
                width: width - 10.0,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 250, 45, 108),
                    borderRadius: BorderRadius.circular(7.0))),
            Container(
                margin: const EdgeInsets.only(right: 10.0),
                width: width - 10.0,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 32, 211, 234),
                    borderRadius: BorderRadius.circular(7.0))),
            Center(
                child: Container(
              height: double.infinity,
              width: width - 20,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(7.0)),
              child: const Icon(
                Icons.add,
                size: 20.0,
              ),
            )),
          ]),
        ));
  }
}
