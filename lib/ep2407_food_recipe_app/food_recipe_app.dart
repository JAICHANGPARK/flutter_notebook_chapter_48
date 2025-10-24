import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_48/ep2407_food_recipe_app/ui/food_recipe_main_menu_page.dart';


class FoodRecipeApp extends StatelessWidget {
  const FoodRecipeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FoodRecipeMainMenuPage(),
    );
  }
}
