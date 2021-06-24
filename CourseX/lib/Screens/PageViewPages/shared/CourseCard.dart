import 'package:coursex/constants/colors.dart';
import 'package:coursex/constants/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CourseCard extends StatefulWidget {
  final String courseName;
  final String cost;
  final String time;
  final String level;
  final String rating;
  CourseCard(
      this.courseName,
      this.cost,
      this.time,
      this.level,
      this.rating
      );

  @override
  _CourseCardState createState() => _CourseCardState();
}

class _CourseCardState extends State<CourseCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width/1.1,
      height: 300,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      child: Column(
        children: <Widget>[
          Stack(
            children: [
              Column(
                children: [
                  Container(
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20)
                      ),
                      color: boxHead,
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  )
                ],
              ),
              Positioned(
                left: 30,
                top: 20,
                child: CircleAvatar(
                  radius: 20,
                  child: FaIcon(FontAwesomeIcons.linkedin),
                ),
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
            child: Text(
              widget.courseName,
              style: courseStyleHeading,
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(40, 20, 0, 10),
            child: Row(
              children: [
                properties(
                    FaIcon(FontAwesomeIcons.rupeeSign, size: 15,color: Colors.grey[800],),
                    widget.cost
                ),
                SizedBox(width: 60,),
                properties(
                    FaIcon(FontAwesomeIcons.clock, size: 15,color: Colors.grey[800],),
                    widget.time
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(40, 15, 0, 20),
            child: Row(
              children: [
                properties(
                    FaIcon(FontAwesomeIcons.lightbulb, size: 15,color: Colors.grey[800],),
                    widget.level
                ),
                SizedBox(width: 60,),
                properties(
                    FaIcon(FontAwesomeIcons.star, size: 15,color: Colors.grey[800],),
                    widget.rating
                ),
              ],
            ),
          ),
          Divider(
            color: Colors.grey,
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 30, 0),
              child: FaIcon(
                FontAwesomeIcons.bookmark,size: 25,
              ),
            ),
          )
        ],
      ),
    );
  }
  Widget properties(FaIcon icon,String name){
    return Container(
      child: Row(
        children: [
          icon,
          SizedBox(width: 10,),
          Text(name,style: courseSubHeading,)
        ],
      ),
    );
  }
}
