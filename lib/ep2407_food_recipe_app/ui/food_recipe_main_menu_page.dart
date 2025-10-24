import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';

class FoodRecipeMainMenuPage extends StatefulWidget {
  const FoodRecipeMainMenuPage({super.key});

  @override
  State<FoodRecipeMainMenuPage> createState() => _FoodRecipeMainMenuPageState();
}

class _FoodRecipeMainMenuPageState extends State<FoodRecipeMainMenuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Positioned(
            bottom: 24,
            left: 16,
            right: 16,
            child: Container(
              height: 100,
              decoration: ShapeDecoration(
                shape: StadiumBorder(),
                color: Color.fromRGBO(27, 27, 27, 1),
              ),
              padding: EdgeInsets.all(8),
              child: Container(
                decoration: ShapeDecoration(
                  shape: StadiumBorder(),
                  color: Color.fromRGBO(37, 37, 37, 1),
                ),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: HugeIcon(icon: HugeIcons.strokeRoundedChefHat),
                      color: Colors.grey,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
