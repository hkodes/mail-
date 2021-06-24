import 'package:coursex/Data/MotivationData.dart';
import 'package:coursex/Screens//PageViewPages/shared/optionDot.dart';
import 'package:coursex/constants/styles.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class WidgetPage2 extends StatefulWidget {
  final void Function() pageButtonPress;
  WidgetPage2(this.pageButtonPress);

  @override
  _WidgetPage2State createState() => _WidgetPage2State();
}

class _WidgetPage2State extends State<WidgetPage2> {
  @override
  Widget build(BuildContext context) {
    final motivationDataProvider = Provider.of<MotivationData>(context);
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 100,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 0, 10),
            child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Take the Right Course!",
                  style: textStyleSubHeading,
                )),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 10, 0, 20),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "What is your motivation to\n"
                "learn?",
                style: textStyleHeading,
              ),
            ),
          ),
          InkWell(
              onTap: () {
                widget.pageButtonPress();
              },
              child:
                  option(motivationDataProvider.motivationOptions['Option1'])),
          InkWell(
              child:
                  option(motivationDataProvider.motivationOptions['Option2'])),
          InkWell(
              child:
                  option(motivationDataProvider.motivationOptions['Option3'])),
          SizedBox(
            height: 30,
          ),
          Container(
              width: 200,
              height: 200,
              child: Image.asset(
                'assets/image1.png',
                fit: BoxFit.cover,
              )),
        ],
      ),
    );
  }

  Widget option(String option) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 10, 0, 10),
      child: Row(
        children: <Widget>[
          optionDot(),
          SizedBox(
            width: 20,
          ),
          Text(
            option,
            style: optionStyle,
          ),
        ],
      ),
    );
  }
}
