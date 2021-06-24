import 'package:coursex/constants/default_button.dart';
import 'package:coursex/pageview_home.dart';
import 'package:flutter/material.dart';

// This is the best practice
import '../../../size_config.dart';
import '../components/splash_content.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;
  List<Map<String, String>> splashData = [
    {
      "text": "My Course",
      "subtext":
          "A single platform for you to explore, \ncompare, track and review courses \nfrom across the web.",
      "sub": "Discover Courses from over 30+ Providers",
      "image": "assets/image2.png"
    },
    {
      "text": "Explore",
      "subtext": "And compare courses.",
      "sub": "30,000+ Courses   200+ Universities",
      "image": "assets/image2.png"
    },
    {
      "text": "Find",
      "subtext": "The right course from your Domain",
      "sub": "And become an expert",
      "image": "assets/image2.png"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 2,
              child: PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                itemCount: splashData.length,
                itemBuilder: (context, index) => SplashContent(
                  image: splashData[index]["image"],
                  text: splashData[index]["text"],
                  subtext: splashData[index]["subtext"],
                  sub: splashData[index]["sub"],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(20)),
                child: Column(
                  children: <Widget>[
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        splashData.length,
                        (index) => buildDot(index: index),
                      ),
                    ),
                    Spacer(flex: 3),
                    DefaultButton(
                      text: "Start Now",
                      press: () {
                        Navigator.pushReplacement<void, void>(
                            context,
                            MaterialPageRoute<void>(
                              builder: (BuildContext context) => PageViewHome(),
                            ));
                      },
                    ),
                    Spacer(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildDot({int index}) {
    const kAnimationDuration = Duration(milliseconds: 200);

    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
        color: currentPage == index ? Color(0xff1e90ff) : Color(0xff1e90ff),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
