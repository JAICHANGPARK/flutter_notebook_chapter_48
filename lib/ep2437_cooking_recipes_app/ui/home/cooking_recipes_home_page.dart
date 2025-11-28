import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_48/ep2437_cooking_recipes_app/data/cooking_recipes.dart';
import 'package:gap/gap.dart';

class CookingRecipesHomePage extends StatefulWidget {
  const CookingRecipesHomePage({super.key});

  @override
  State<CookingRecipesHomePage> createState() => _CookingRecipesHomePageState();
}

class _CookingRecipesHomePageState extends State<CookingRecipesHomePage> {
  final tabs = ["See All", "Soup", "Breakfast", "Salad"];
  int selectedTab = 0;

  final List<CookingRecipe> menuList = [
    CookingRecipe(
      id: 1,
      name: "Spicy Thai Tom Yum",
      description: "A tangy and spicy Thai soup...",
      imageUrl:
          "https://cdn.pixabay.com/photo/2017/06/30/04/58/green-curry-2457236_1280.jpg",
    ),
    CookingRecipe(
      id: 2,
      name: "Spicy Thai Tom Yum",
      description: "A tangy and spicy Thai soup...",
      imageUrl:
          "https://cdn.pixabay.com/photo/2016/11/18/16/10/food-1835565_1280.jpg",
    ),
    CookingRecipe(
      id: 3,
      name: "Classic Pad Thai",
      description: "Stir-fried rice noodle...",
      imageUrl:
          "https://cdn.pixabay.com/photo/2017/06/30/04/58/green-curry-2457236_1280.jpg",
    ),
  ];

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
              spacing: 16,
              crossAxisAlignment: .start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    spacing: 12,
                    children: [
                      CircleAvatar(),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: .start,
                          children: [
                            Text("Good Morning"),
                            Text(
                              "Dreamwalker",
                              style: TextStyle(fontWeight: .bold, fontSize: 20),
                            ),
                          ],
                        ),
                      ),
                      CircleAvatar(child: Icon(Icons.menu)),
                    ],
                  ),
                ),
                Padding(
                  padding: .symmetric(horizontal: 16),
                  child: Text(
                    "Feeling hungry?\nWhat are we cookin' today?",
                    style: TextStyle(fontSize: 24, fontWeight: .bold),
                  ),
                ),
                Container(
                  margin: .symmetric(horizontal: 16),
                  padding: .symmetric(horizontal: 12),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey[300]!,
                        spreadRadius: 1,
                        offset: Offset(0, 2),
                        blurRadius: 3,
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.search),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Search any recipe...",
                            border: InputBorder.none,
                            hintStyle: TextStyle(color: Colors.grey),
                          ),
                        ),
                      ),
                      Icon(Icons.filter_list),
                    ],
                  ),
                ),
                Container(
                  height: 42,
                  padding: EdgeInsets.only(left: 16),
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: tabs.length,
                    itemBuilder: (context, index) {
                      final tab = tabs[index];
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedTab = index;
                          });
                        },
                        child: Container(
                          decoration: ShapeDecoration(
                            shape: StadiumBorder(
                              side: BorderSide(color: Colors.grey[200]!),
                            ),
                            color: index == selectedTab
                                ? .fromRGBO(18, 60, 21, 1)
                                : Colors.transparent,
                          ),
                          margin: EdgeInsets.only(right: 8),
                          padding: EdgeInsets.symmetric(horizontal: 16),
                          child: Center(
                            child: Text(
                              "${tab}",
                              style: TextStyle(
                                color: index == selectedTab
                                    ? Colors.white
                                    : .fromRGBO(18, 60, 21, 1),
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Expanded(
                  child: SingleChildScrollView(
                    padding: .zero,
                    child: Column(
                      crossAxisAlignment: .start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Row(
                            mainAxisAlignment: .spaceBetween,
                            children: [
                              Text(
                                "Recommendation",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                              TextButton(
                                onPressed: () {},
                                child: Text("See All"),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 270,
                          padding: EdgeInsets.only(left: 16),
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: menuList.length,
                            itemBuilder: (context, index) {
                              final menu = menuList[index];
                              return Container(
                                width: 180,
                                margin: EdgeInsets.only(right: 12),
                                // decoration: BoxDecoration(color: Colors.orange),
                                child: Column(
                                  spacing: 8,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: Colors.blue,
                                          borderRadius: .circular(14),
                                          image: DecorationImage(
                                            image: NetworkImage(menu.imageUrl),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Text(
                                      "Spicy Thai Tom Yum",
                                      style: TextStyle(fontWeight: .bold),
                                    ),
                                    Text(
                                      "A tangy and spicy Thai soup...",
                                      maxLines: 1,
                                      overflow: .ellipsis,
                                      style: TextStyle(fontSize: 13),
                                    ),
                                  ],
                                ),
                              );
                            },
                          ),
                        ),
                        Gap(16),
                        Padding(
                          padding: .symmetric(horizontal: 16),
                          child: Row(
                            mainAxisAlignment: .spaceBetween,
                            children: [
                              Text(
                                "Recipe of The Week",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                              TextButton(
                                onPressed: () {},
                                child: Text("See All"),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 270,
                          padding: EdgeInsets.only(left: 16),
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return Container(
                                width: 220,
                                margin: EdgeInsets.only(right: 12),
                                // decoration: BoxDecoration(color: Colors.orange),
                                child: Column(
                                  spacing: 8,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: Colors.blue,
                                          borderRadius: .circular(14),
                                        ),
                                      ),
                                    ),
                                    Text(
                                      "Spicy Thai Tom Yum",
                                      style: TextStyle(fontWeight: .bold),
                                    ),
                                    Text(
                                      "A tangy and spicy Thai soup...",
                                      maxLines: 1,
                                      overflow: .ellipsis,
                                      style: TextStyle(fontSize: 13),
                                    ),
                                  ],
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
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
