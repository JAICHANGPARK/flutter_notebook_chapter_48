import 'package:flutter/material.dart';

class CookingRecipesHomePage extends StatefulWidget {
  const CookingRecipesHomePage({super.key});

  @override
  State<CookingRecipesHomePage> createState() => _CookingRecipesHomePageState();
}

class _CookingRecipesHomePageState extends State<CookingRecipesHomePage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color.fromRGBO(227, 253, 221, 1),
                  Color.fromRGBO(240, 254, 238, 1),
                  Colors.white,
                  Colors.white,
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
