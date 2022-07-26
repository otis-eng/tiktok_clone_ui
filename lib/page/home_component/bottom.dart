import 'package:flutter/widgets.dart';

class HomePage_Bottom extends StatefulWidget {
  const HomePage_Bottom({Key? key}) : super(key: key);

  @override
  State<HomePage_Bottom> createState() => _HomePage_BottomState();
}

class _HomePage_BottomState extends State<HomePage_Bottom> {
  @override
  Widget build(BuildContext context) {
    return const SizedBox(height: 80, child: Text("BottomHomage"));
  }
}
