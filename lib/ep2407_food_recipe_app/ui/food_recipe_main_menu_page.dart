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
          Positioned.fill(
            left: 16,
            right: 16,
            child: SafeArea(
              child: Column(
                spacing: 24,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 62,
                    // color: Colors.blue,
                    child: Stack(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: CircleAvatar(
                            foregroundColor: Colors.white,
                            backgroundColor: Colors.white.withValues(alpha: .1),
                            child: Icon(Icons.arrow_back_ios_new, size: 16),
                          ),
                        ),
                        Center(
                          child: Text(
                            "Plan",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Main Menu",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      Text(
                        "No planned revenue",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                  Container(
                    height: 80,
                    decoration: BoxDecoration(
                      color: Colors.white.withValues(alpha: .1),
                    ),
                  ),
                  Container(
                    height: 260,
                    decoration: BoxDecoration(
                      color: Colors.white.withValues(alpha: .1),
                    ),
                  ),
                  SizedBox(
                    height: 42,
                  ),
                  Column(
                    spacing: 12,
                    children: [
                      Text(
                        "You haven't created a shopping list yet",
                        style: TextStyle(color: Colors.white),
                      ),
                      Container(
                        decoration: ShapeDecoration(
                          shape: StadiumBorder(),
                          color: Color.fromRGBO(242, 78, 4, 1),
                        ),
                        child: Center(child: Text("Create a shoppping list")),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
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
                padding: EdgeInsets.symmetric(horizontal: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: HugeIcon(icon: HugeIcons.strokeRoundedChefHat),
                      color: Colors.grey,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: HugeIcon(icon: HugeIcons.strokeRoundedSearch01),
                      color: Colors.grey,
                    ),
                    Container(
                      height: 62,
                      width: 62,
                      child: Stack(
                        children: [
                          Positioned.fill(
                            child: Container(
                              margin: EdgeInsets.all(3),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                              ),
                              padding: EdgeInsets.all(2),
                              child: CircleAvatar(
                                backgroundColor: Color.fromRGBO(240, 79, 6, 1),
                              ),
                            ),
                          ),
                          Positioned(
                            right: 0,
                            top: 0,
                            child: Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                              ),
                              padding: EdgeInsets.all(1.5),
                              child: CircleAvatar(
                                radius: 10,
                                backgroundColor: Colors.black,
                                child: Center(
                                  child: Text(
                                    "2",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.import_contacts),
                      color: Colors.grey,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: HugeIcon(icon: HugeIcons.strokeRoundedCalendar02),
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
