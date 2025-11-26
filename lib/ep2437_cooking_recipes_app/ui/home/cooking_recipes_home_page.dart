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
                  Colors.white,
                ],
              ),
            ),
          ),
        ),
        Positioned(
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    CircleAvatar(),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [Text("Good Morning"), Text("Dreamwalker")],
                      ),
                    ),
                    CircleAvatar(),
                  ],
                ),
                Text("Feeling hungry?\nWhat are we cookin' today?"),
                Container(decoration: BoxDecoration(color: Colors.white),
                child: Row(
                  children: [
                    Icon(Icons.search),
                    Expanded(child: TextField()),
                    Icon(Icons.filter_list)
                  ],
                ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
