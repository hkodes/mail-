import 'package:coursex/Screens//PageViewPages/Page2/widgetpage2.dart';
import 'package:flutter/material.dart';
class PageViewPage2 extends StatefulWidget {
  final void Function() pageButtonPress;
  PageViewPage2(this.pageButtonPress);

  @override
  _PageViewPage2State createState() => _PageViewPage2State();
}

class _PageViewPage2State extends State<PageViewPage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WidgetPage2(widget.pageButtonPress),
    );
  }
}
