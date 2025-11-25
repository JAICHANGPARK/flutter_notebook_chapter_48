import 'package:flutter/material.dart';

import 'ui/cooking_recipes_main_page.dart';

class CookingRecipesApp extends StatelessWidget {
  const CookingRecipesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CookingRecipesMainPage(),
    );
  }
}
