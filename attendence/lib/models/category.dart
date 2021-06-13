import 'package:flutter/material.dart';

class Category {
  final String id;
  final String title;
  final Color color;
  final Icon icon;

  const Category({
    required this.id,
    required this.title,
    this.color = Colors.orange,
    required this.icon,
  });
}
