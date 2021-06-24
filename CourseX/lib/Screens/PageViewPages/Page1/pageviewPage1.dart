import 'package:coursex/Screens//PageViewPages/Page1/widgetpage1.dart';
import 'package:flutter/material.dart';

class PageViewPage1 extends StatefulWidget {
  final void Function() pageButtonPress;
  PageViewPage1(this.pageButtonPress);

  @override
  _PageViewPage1State createState() => _PageViewPage1State();
}

class _PageViewPage1State extends State<PageViewPage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WidgetPage1(widget.pageButtonPress),
    );
  }
}
