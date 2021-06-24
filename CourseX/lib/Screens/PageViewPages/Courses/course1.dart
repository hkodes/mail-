import 'package:coursex/Screens/PageViewPages/shared/CourseCard.dart';
import 'package:coursex/constants/colors.dart';
import 'package:coursex/pageview_home.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class Course1 extends StatefulWidget {
  const Course1({Key key}) : super(key: key);

  @override
  _Course1State createState() => _Course1State();
}

class _Course1State extends State<Course1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      backgroundColor: primaryBg,
      body: Center(
        child: CourseCard(
          'Additive Manufacturing: Metal 3D Printing',
          '2000 INR',
          '1 Hrs',
          'Beginner',
          'Not Rated'
        ),
      ),
    );
  }
}
