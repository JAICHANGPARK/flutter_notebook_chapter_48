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
                        style: TextStyle(color: Colors.white, fontSize: 20),
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
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                    child: Row(
                      spacing: 16,
                      children: [
                        Container(
                          height: 62,
                          width: 62,
                          decoration: BoxDecoration(
                            color: Colors.orange,
                            borderRadius: BorderRadius.circular(8),
                            image: DecorationImage(
                              image: NetworkImage(
                                "https://cdn.pixabay.com/photo/2021/01/01/15/31/sushi-balls-5878892_1280.jpg",
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Food menu",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                              Text(
                                "Access my menus",
                                style: TextStyle(color: Colors.grey),
                              ),
                            ],
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.arrow_forward_ios),
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white.withValues(alpha: .1),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding: EdgeInsets.all(12),
                    child: Column(
                      spacing: 32,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Expanded(
                                child: Column(
                                  spacing: 6,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "My shopping lists",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                      ),
                                    ),
                                    Row(
                                      spacing: 6,
                                      children: [
                                        Icon(
                                          Icons.shopping_bag,
                                          size: 14,
                                          color: Colors.white,
                                        ),
                                        Text(
                                          "No shopping list",
                                          style: TextStyle(color: Colors.grey),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              CircleAvatar(
                                radius: 24,
                                backgroundColor: Colors.black,

                                foregroundColor: Colors.white,
                                child: Icon(
                                  Icons.shopping_bag_outlined,
                                  size: 18,
                                ),
                              ),
                            ],
                          ),
                        ),

                        Container(
                          height: 160,
                          decoration: BoxDecoration(
                            color: Colors.orange,
                            borderRadius: BorderRadius.circular(6),
                            image: DecorationImage(
                              image: NetworkImage(
                                "https://cdn.pixabay.com/photo/2016/11/19/12/44/burgers-1839090_1280.jpg",
                              ),
                              
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 16),
                  Column(
                    spacing: 12,
                    children: [
                      Text(
                        "You haven't created a shopping list yet",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                      Container(
                        decoration: ShapeDecoration(
                          shape: StadiumBorder(),
                          color: Color.fromRGBO(242, 78, 4, 1),
                        ),
                        padding: EdgeInsets.symmetric(vertical: 16),
                        child: Center(
                          child: Text(
                            "Create a shoppping list",
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                        ),
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
