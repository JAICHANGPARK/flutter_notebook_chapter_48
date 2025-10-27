import 'package:flutter/material.dart';

class FoodRecipeMyMenusPage extends StatefulWidget {
  const FoodRecipeMyMenusPage({super.key});

  @override
  State<FoodRecipeMyMenusPage> createState() => _FoodRecipeMyMenusPageState();
}

class _FoodRecipeMyMenusPageState extends State<FoodRecipeMyMenusPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 24,
      children: [
        Container(
          height: 58,
          decoration: ShapeDecoration(
            shape: StadiumBorder(),
            color: Colors.white12,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 42),
          child: Text(
            "Your menu is empty. Add the recipes you want to plan",
            style: TextStyle(color: Colors.white),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
