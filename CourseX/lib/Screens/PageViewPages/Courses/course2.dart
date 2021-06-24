import 'package:coursex/Screens/PageViewPages/shared/CourseCard.dart';
import 'package:coursex/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import '../../../pageview_home.dart';

class Course2 extends StatefulWidget {
  const Course2({Key key}) : super(key: key);

  @override
  _Course2State createState() => _Course2State();
}

class _Course2State extends State<Course2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryBg,
      appBar: AppBar(
        backgroundColor: primaryBg,
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back,color: Colors.grey[800],),
          onPressed: (){
            Navigator.pushAndRemoveUntil<dynamic>(
              context,
              PageTransition(
                  type: PageTransitionType.leftToRightWithFade, child: PageViewHome())
              , (route) => false,
            );
          },
        ),
      ),
      body: Center(
        child: CourseCard(
            'An Insiders Guide to Today''s Music Biz: 4 Building a Professional Team',
            '1400 INR',
            '0.6 Hrs',
            'Beginner',
            'Not Rated'
        ),
      ),
    );
  }
}
