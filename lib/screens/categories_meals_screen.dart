// ignore_for_file: unused_local_variable

import 'package:culinaria/data/dummy_data.dart';
import 'package:culinaria/models/category.dart';
import 'package:flutter/material.dart';

class CategoriesMealsScreen extends StatelessWidget {
  const CategoriesMealsScreen({Key? key}) : super(key: key);

  // ignore: use_key_in_widget_constructors

  @override
  Widget build(BuildContext context) {
    final category = ModalRoute.of(context)!.settings.arguments as Category;

    final categoryMeals = DUMMY_MEALS
        .where((meal) => meal.categories.contains(category.id))
        .toList();

    return Scaffold(
        appBar: AppBar(
          title: Text(category.title),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: categoryMeals.length,
          itemBuilder: (ctx, index) => Text(categoryMeals[index].title),
        ));
  }
}
