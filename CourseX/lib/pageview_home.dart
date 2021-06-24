import 'package:coursex/constants/styles.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'Screens/PageViewPages/Page1/pageviewPage1.dart';
import 'Screens/PageViewPages/Page2/pageviewPage2.dart';
import 'Screens/PageViewPages/Page3/pageviewPage3.dart';

class PageViewHome extends StatefulWidget {
  const PageViewHome({Key key}) : super(key: key);

  @override
  _PageViewHomeState createState() => _PageViewHomeState();
}

class _PageViewHomeState extends State<PageViewHome> {
  final PageController pageController = PageController(initialPage: 0);

  //PageChange Function
  void onButtonPageChange() {
    pageController.nextPage(
        duration: Duration(milliseconds: 300), curve: Curves.ease);
  }

  void onButtonPageChangeBack() {
    pageController.previousPage(
        duration: Duration(milliseconds: 300), curve: Curves.ease);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height / 1.2,
            child: PageView(
              physics: new NeverScrollableScrollPhysics(),
              scrollDirection: Axis.horizontal,
              controller: pageController,
              children: <Widget>[
                Container(
                  child: PageViewPage1(onButtonPageChange),
                ),
                Container(
                  child: PageViewPage2(onButtonPageChange),
                ),
                Container(
                  child: PageViewPage3(onButtonPageChange),
                ),
              ],
            ),
          ),
          Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.width / 6,
                child: SmoothPageIndicator(
                  controller: pageController,
                  effect: SwapEffect(activeDotColor: Colors.blue),
                  count: 3,
                ),
              ),
              TextButton(
                  onPressed: () {
                    onButtonPageChangeBack();
                  },
                  child: Text(
                    "Back",
                    style: textButtonStyle,
                  ))
            ],
          )
        ],
      ),
    );
  }
}
