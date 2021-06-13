import 'package:attendence/models/blue_bar.dart';
import 'package:attendence/models/category.dart';

import 'package:flutter/material.dart';

const DUMMY_CATEGORIES = const [
  Category(
    id: 'c1',
    title: 'Absent Days For Current & Last Month',
    color: Color.fromARGB(255, 12, 109, 230),
    icon: Icon(
      Icons.access_time,
    ),
  ),
  Category(
    id: 'c2',
    title: 'Leave & Regularization history',
    color: Color.fromARGB(255, 12, 109, 230),
    icon: Icon(
      Icons.add_photo_alternate_sharp,
    ),
  ),
  Category(
    id: 'c3',
    title: 'Time Report -Team',
    color: Color.fromARGB(255, 12, 109, 230),
    icon: Icon(
      Icons.person_add_alt,
    ),
  ),
];
const DUMMY_BARS = const [
  BlueBar(title: 'My Calender'),
  BlueBar(title: 'Apply Leave'),
  BlueBar(title: 'Holiday Calender'),
];
