import 'package:flutter/src/widgets/framework.dart';

class Page_View extends StatefulWidget {
  final data;
  const Page_View(this.data);

  @override
  State<Page_View> createState() => _Page_ViewState();
}

class _Page_ViewState extends State<Page_View> {
  @override
  Widget build(BuildContext context) {
    var data = widget.data;
  }
}
