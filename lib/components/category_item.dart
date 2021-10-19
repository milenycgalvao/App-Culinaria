import 'package:culinaria/models/category.dart';
import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final Category category;

  // ignore: use_key_in_widget_constructors
  const CategoryItem({required this.category});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(category.title),
    );
  }
}
