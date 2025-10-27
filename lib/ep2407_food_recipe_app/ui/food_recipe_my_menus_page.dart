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
      children: [
        Container(
          height: 58,
          decoration: ShapeDecoration(shape: StadiumBorder(),
          color: Colors.white12,
          ),
        )
      ],
    );
  }
}
