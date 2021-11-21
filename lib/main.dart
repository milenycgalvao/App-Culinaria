import 'package:culinaria/routes/app_routes.dart';
import 'package:culinaria/screens/categories_meals_screen.dart';
import 'package:culinaria/screens/categories_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = ThemeData();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Vamos Cozinhar?',
      theme: ThemeData(
          colorScheme: theme.colorScheme.copyWith(
            primary: Colors.pink.shade400,
            secondary: Colors.amber,
          ),
          canvasColor: const Color.fromRGBO(255, 254, 229, 1),
          fontFamily: 'Raleway',
          textTheme: const TextTheme(
              headline6: TextStyle(
            fontFamily: 'RobotoCondensed',
          ))),
      routes: {
        //nao é necessario criar outro arquivo porem tem menos chance de dar erro de digitacao no codigo
        AppRoutes.HOME: (ctx) => const CategoriesScreen(),
        AppRoutes.CATEGORIES_MEALS: (ctx) => const CategoriesMealsScreen(),
      },
    );
  }
}
