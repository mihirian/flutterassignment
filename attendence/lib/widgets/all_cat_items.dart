import 'package:attendence/widgets/category_item.dart';
import 'package:attendence/widgets/dummy_data.dart';
import 'package:flutter/material.dart';

class AllCatItems extends StatelessWidget {
  const AllCatItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ...DUMMY_CATEGORIES.map(
          (catData) => CategoryItem(
            catData.title,
            catData.color,
            catData.id,
            catData.icon,
          ),
        ),
      ],
    );
  }
}
