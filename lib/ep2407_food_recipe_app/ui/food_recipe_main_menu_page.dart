import 'package:flutter/material.dart';

class FoodRecipeMainMenuPage extends StatefulWidget {
  const FoodRecipeMainMenuPage({super.key});

  @override
  State<FoodRecipeMainMenuPage> createState() => _FoodRecipeMainMenuPageState();
}

class _FoodRecipeMainMenuPageState extends State<FoodRecipeMainMenuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            bottom: 16,
            child: Container(
              decoration: ShapeDecoration(
                shape: StadiumBorder(),
                color: Color.fromRGBO(27, 27, 27, 1),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
