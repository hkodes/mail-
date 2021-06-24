import 'package:coursex/constants/styles.dart';
import 'package:flutter/material.dart';

import '../../../size_config.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({
    Key key,
    this.text,
    this.subtext,
    this.sub,
    this.image,
  }) : super(key: key);
  final String text, subtext, sub, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Spacer(
          flex: 2,
        ),
        Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: getProportionateScreenWidth(36),
            color: Color(0xff1e90ff),
            fontWeight: FontWeight.bold,
          ),
        ),
        Padding(padding: const EdgeInsets.all(7)),
        Text(
          subtext,
          style: textStyleSubHeading,
          textAlign: TextAlign.center,
        ),
        Spacer(flex: 2),
        Image.asset(
          image,
          height: getProportionateScreenHeight(265),
          width: getProportionateScreenWidth(235),
        ),
        Padding(padding: const EdgeInsets.all(7)),
        Text(
          sub,
          style: textStyleSubHeading,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
