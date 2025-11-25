import 'package:flutter/material.dart';

class CookingRecipesMainPage extends StatefulWidget {
  const CookingRecipesMainPage({super.key});

  @override
  State<CookingRecipesMainPage> createState() => _CookingRecipesMainPageState();
}

class _CookingRecipesMainPageState extends State<CookingRecipesMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(child: Placeholder()),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: .circular(24),
                  topRight: .circular(24),
                ),
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
