import 'package:attendence/models/blue_bar.dart';
import 'package:attendence/widgets/all_cat_items.dart';
import 'package:attendence/widgets/calender.dart';
import 'package:attendence/widgets/category_item.dart';
import 'package:attendence/widgets/dummy_data.dart';
import 'package:attendence/widgets/expandcards.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LandAScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Leave & Attendence',
          textAlign: TextAlign.start,
        ),
      ),
      drawer: Drawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            AllCatItems(),
            SizedBox(
              height: 40,
            ),
            ...DUMMY_BARS.map(
              (catData) => ExpandCards(
                catData.title,
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}
