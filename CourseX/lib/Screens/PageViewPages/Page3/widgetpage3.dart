import 'package:coursex/Data/HourData.dart';
import 'package:coursex/Screens/PageViewPages/Courses/course1.dart';
import 'package:coursex/Screens/PageViewPages/Courses/course2.dart';
import 'package:coursex/constants/styles.dart';
import 'package:flutter/material.dart';
import 'package:coursex/Screens//PageViewPages/shared/optionDot.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';

class WidgetPage3 extends StatefulWidget {
  final void Function() pageButtonPress;
  WidgetPage3(this.pageButtonPress);

  @override
  _WidgetPage3State createState() => _WidgetPage3State();
}

class _WidgetPage3State extends State<WidgetPage3> {
  @override
  Widget build(BuildContext context) {
    final hourOptionsProvider = Provider.of<HourData>(context);
    return Container(
        width: MediaQuery.of(context).size.width,
        child: Column(children: <Widget>[
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
                "Choose your time commitment\n"
                "per week?",
                style: textStyleHeading,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 10, 50, 0),
            child: Row(
              children: [
                InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          PageTransition(
                              type: PageTransitionType.rightToLeftWithFade,
                              child: Course1()));
                    },
                    child: option(hourOptionsProvider.hourOptions['Option1'])),
                SizedBox(
                  width: 40,
                ),
                InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          PageTransition(
                              type: PageTransitionType.rightToLeftWithFade,
                              child: Course2()));
                    },
                    child: option(hourOptionsProvider.hourOptions['Option2'])),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 5, 50, 0),
            child: Row(
              children: [
                InkWell(
                    child: option(hourOptionsProvider.hourOptions['Option3'])),
                SizedBox(
                  width: 40,
                ),
                InkWell(
                    child: option(hourOptionsProvider.hourOptions['Option4'])),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 5, 50, 0),
            child: Row(
              children: [
                InkWell(
                    child: option(hourOptionsProvider.hourOptions['Option5'])),
              ],
            ),
          ),
          Container(
              width: 200,
              height: 200,
              child: Image.asset(
                'assets/image2.png',
                fit: BoxFit.cover,
              )),
        ]));
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
