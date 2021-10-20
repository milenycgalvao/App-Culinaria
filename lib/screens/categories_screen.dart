import 'package:culinaria/components/category_item.dart';
import 'package:culinaria/data/dummy_data.dart';
import 'package:flutter/material.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Vamos Cozinhar?'),
        centerTitle: true,
      ),
      body: GridView(
        padding: const EdgeInsets.all(15),
        //parecido c listview
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200, //de cada componente
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20, //espaco entre
          mainAxisSpacing: 20,
        ),
        children:
            DummyCategories.map((cat) => CategoryItem(category: cat)).toList(),
      ),
    );
  }
}
