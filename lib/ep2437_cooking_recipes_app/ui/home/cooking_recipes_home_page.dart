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
                begin: .topCenter,
                end: .bottomCenter,
                colors: [
                  .fromRGBO(227, 253, 221, 1),
                  .fromRGBO(240, 254, 238, 1),
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
              crossAxisAlignment: .start,
              children: [
                Row(
                  children: [
                    CircleAvatar(),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: .start,
                        children: [Text("Good Morning"), Text("Dreamwalker")],
                      ),
                    ),
                    CircleAvatar(),
                  ],
                ),
                Text("Feeling hungry?\nWhat are we cookin' today?"),
                Container(
                  decoration: BoxDecoration(color: Colors.white),
                  child: Row(
                    children: [
                      Icon(Icons.search),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Search any recipe...",
                          ),
                        ),
                      ),
                      Icon(Icons.filter_list),
                    ],
                  ),
                ),
                SizedBox(height: 42, child: Placeholder()),
                Row(
                  children: [
                    Text("Recommendation"),
                    TextButton(onPressed: () {}, child: Text("See All")),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
