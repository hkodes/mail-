import 'package:coursex/constants/styles.dart';
import 'package:flutter/material.dart';

class WidgetPage1 extends StatefulWidget {
  final void Function() pageButtonPress;
  WidgetPage1(this.pageButtonPress);

  @override
  _WidgetPage1State createState() => _WidgetPage1State();
}

class _WidgetPage1State extends State<WidgetPage1> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: <Widget>[
          SizedBox(height: 150,),
          Padding(
            padding: const EdgeInsets.fromLTRB(20,0,0,10),
            child: Align(
              alignment: Alignment.centerLeft,
                child: Text(
                  "Take the Right Course!",
                  style: textStyleSubHeading,)
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 10, 0, 10),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text("What is your area of interest?",
                style: textStyleHeading,),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20,0,0,0),
            child: Container(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  InkWell(
                    onTap: (){
                      widget.pageButtonPress();
                    },
                      child: interestContainer('assets/ArtsIcon.png')
                  ),
                  InkWell(
                      child: interestContainer('assets/CsIcon.png')
                  ),
                  InkWell
                    (
                      child: interestContainer('assets/DataScienceIcon.png')
                  ),
                  InkWell(
                      child: interestContainer('assets/ItIcon.png')
                  ),
                  InkWell(
                      child: interestContainer('assets/MathIcon.png')
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget interestContainer(String imageLocation){
    return Container(
      width: 100,
      height: 100,
      child: Image.asset(imageLocation),
    );
  }
}
