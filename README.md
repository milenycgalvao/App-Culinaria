# App Culinaria

This is a Flutter Application that works like a cookbook.

<div align="center">
<img src="https://user-images.githubusercontent.com/58363666/154869898-d7b1b4e1-9a2d-4f03-8e75-e42e7d2619d6.jpg" width="200px">
<img src="https://user-images.githubusercontent.com/58363666/154869900-21c61dc5-a07e-4bfe-9106-58fdd31789ca.jpg" width="200px">

</div>

## Overview

This is a study project that still not over yet, it is on the section 7 of Flutter couse "Aprenda Flutter e Desenvolva Apps Para Android e IOS 2021" of Udemy. The main objective this project is working with navegation and multiple screens.


To work with navegation in your project you can use routes, creating a pile of screens that you can call when you need. The way used in this project is in the file `lib/main.dart`:

```
routes: {
        AppRoutes.HOME: (ctx) => const CategoriesScreen(),
        AppRoutes.CATEGORIES_MEALS: (ctx) => const CategoriesMealsScreen(),
        AppRoutes.MEAL_DETAIL: (ctx) => MealDetailScreen(),
      },
```


In the file `lib/routes/app_rotes.dart` it´s creat the name of routes that we call on the above code and in the moments that we needed it on the application. This is a way to avoid typos in the code and is created in this code:

```
class AppRoutes {
  static const HOME = '/';
  static const CATEGORIES_MEALS = '/categories-meals';
}
```


To call the screen that we want we use the command `Navigator.of(context).pushNamed()`. We use it on the file `lib/components/category_item.dart` on the function that it will be call on the moment that the user touched. Here we use the `arguments` because we need to know what will be show and this depends on which category the user touched.

```
void _selectCategory(BuildContext context) {
    Navigator.of(context).pushNamed(
      AppRoutes.CATEGORIES_MEALS,
      arguments: category,
    );
  }
```

## Getting Started

For run a Flutter project you will need to have installed:
* Android Studio
* Dart SDK
* Flutter SDK
* VSCode (optional)

In this link, there is a guide for installing the respective software: https://docs.flutter.dev/get-started/install

To iniciation a new Flutter project on VSCode you can follow the steps below:
1. On a new window: `Control + Shift + P` (commands on Windows system)
2. Look and click on `Flutter: New Project`
3. Write the name you want for project

### Running

To run a Flutter project in VSCode you can press `F5` or write the command `Flutter run` on the terminal. Before run a Flutter project you can choice with which device you will want to run. If you will get run in a Android Studio emulator you will need to be with the emulator running before run the Flutter project and choose it at the bottom right in Vscode or you can run the emulator and write the command `Flutter run -d name-of-your-device` on terminal. 

