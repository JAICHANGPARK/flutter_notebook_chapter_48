import 'package:flutter/material.dart';

class CookingRecipesMainPage extends StatefulWidget {
  const CookingRecipesMainPage({super.key});

  @override
  State<CookingRecipesMainPage> createState() => _CookingRecipesMainPageState();
}

class _CookingRecipesMainPageState extends State<CookingRecipesMainPage> {
  int pageNum = 0;
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
              padding: .symmetric(horizontal: 24, vertical: 16),
              child: Row(
                mainAxisAlignment: .spaceAround,
                children: [
                  Column(
                    spacing: 8,
                    mainAxisAlignment: .center,
                    children: [Icon(Icons.home_filled), Text("Home")],
                  ),
                  Column(
                    spacing: 8,
                    mainAxisAlignment: .center,
                    children: [Icon(Icons.search), Text("Search")],
                  ),
                  Column(
                    spacing: 8,
                    mainAxisAlignment: .center,
                    children: [Icon(Icons.inbox), Text("Saved")],
                  ),
                  Column(
                    spacing: 8,
                    mainAxisAlignment: .center,
                    children: [Icon(Icons.person_2_outlined), Text("Profile")],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
