import 'dart:ui';

import 'package:attendence/widgets/apply_leave.dart';
import 'package:attendence/widgets/calender.dart';
import 'package:attendence/widgets/category_item.dart';
import 'package:attendence/widgets/holiday_calender.dart';
import 'package:flutter/material.dart';

class ExpandCards extends StatefulWidget {
  final String title;
  Color color;
  ExpandCards(this.title, this.color);

  @override
  _ExpandCardsState createState() => _ExpandCardsState();
}

class _ExpandCardsState extends State<ExpandCards> {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      color: Color.fromARGB(255, 12, 109, 230),
      margin: EdgeInsets.all(12),
      child: Padding(
        padding: EdgeInsets.only(top: 4.0, left: 4.0, right: 4.0, bottom: 4.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: ExpansionTile(
            collapsedIconColor: Colors.black,
            
            onExpansionChanged: (value) => {
              setState(() {
                if (value) {
                  widget.color = Colors.black;
                } else {
                  widget.color = Colors.white;
                }
              }),
            },
            iconColor: Colors.black,
            backgroundColor: Color.fromRGBO(248, 248, 248, 1),
            title: Text(
              widget.title,
              style: TextStyle(
                color: widget.color,
              ),
            ),
            children: <Widget>[
              Column(
                children: [
                  if (widget.title == "My Calender") Calender(),
                  if (widget.title == "Holiday Calender") HolidayCalender(),
                  if (widget.title == "Apply Leave") ApplyLeave(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
