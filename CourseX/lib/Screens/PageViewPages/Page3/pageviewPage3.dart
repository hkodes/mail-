import 'package:coursex/Screens//PageViewPages/Page3/widgetpage3.dart';
import 'package:flutter/material.dart';

class PageViewPage3 extends StatefulWidget {
  final void Function() pageButtonPress;
  PageViewPage3(this.pageButtonPress);

  @override
  _PageViewPage3State createState() => _PageViewPage3State();
}

class _PageViewPage3State extends State<PageViewPage3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WidgetPage3(widget.pageButtonPress),
    );
  }
}
