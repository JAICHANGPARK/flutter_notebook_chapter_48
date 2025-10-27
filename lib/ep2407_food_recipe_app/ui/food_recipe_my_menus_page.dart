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
            style: TextStyle(color: Colors.white, fontSize: 20),
            textAlign: TextAlign.center,
          ),
        ),
        Column(
          children: List.generate(
            4,
            (idx) => Container(

              height: 100,
              margin: EdgeInsets.only(
                bottom: 16
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.white12,
              ),
              child: Row(
                children: [
                  Container(
                    height: 92,
                    width: 92,
                    decoration: BoxDecoration(),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
