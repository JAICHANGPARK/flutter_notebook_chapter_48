import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CookingRecipesDetailPage extends StatefulWidget {
  const CookingRecipesDetailPage({super.key});

  @override
  State<CookingRecipesDetailPage> createState() =>
      _CookingRecipesDetailPageState();
}

class _CookingRecipesDetailPageState extends State<CookingRecipesDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: [
            Positioned.fill(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(16.0, 16, 16, 0),
                child: Column(
                  crossAxisAlignment: .start,
                  spacing: 12,
                  children: [
                    SizedBox(
                      height: 52,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0,
                            child: CircleAvatar(
                              radius: 24,
                              backgroundColor: Colors.grey[200]!,
                              child: Icon(Icons.arrow_back_outlined),
                            ),
                          ),
                          Positioned(
                            child: Center(
                              child: Text(
                                "Recipes",
                                style: TextStyle(fontSize: 22),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      spacing: 8,
                      children: [
                        Text(
                          "Choco Macarons",
                          style: TextStyle(fontWeight: .bold, fontSize: 26),
                        ),
                        Spacer(),
                        Icon(Icons.star, color: Colors.orange),
                        Text("4.7"),
                      ],
                    ),
                    Row(
                      spacing: 8,
                      children: [
                        Icon(Icons.alarm_add, size: 18),
                        Text("10 min"),
                        Icon(Icons.bar_chart, size: 18),
                        Text("Medium"),
                      ],
                    ),
                    Container(
                      height: 320,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                            "https://cdn.pixabay.com/photo/2021/01/31/06/39/coffee-5966002_1280.jpg",
                          ),
                          fit: .cover,
                        ),
                        borderRadius: .circular(16),
                      ),
                    ),
                    Expanded(
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: .start,
                          spacing: 12,
                          children: [
                            Text(
                              "Description",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                            Text(
                              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                              maxLines: 2,
                            ),
                            Gap(0),
                            Column(
                              children: [
                                ListTileTheme(
                                  contentPadding: .zero,

                                  // minVerticalPadding: 0,
                                  child: ExpansionTile(
                                    tilePadding: EdgeInsets.zero,
                                    minTileHeight: 0,
                                    shape: Border(),

                                    visualDensity: VisualDensity.compact,
                                    title: Text("Ingredients"),
                                  ),
                                ),
                                Divider(height: 0),
                              ],
                            ),
                            Gap(4),
                            Column(
                              children: [
                                ExpansionTile(
                                  tilePadding: EdgeInsets.zero,
                                  minTileHeight: 0,
                                  shape: Border(),
                                  visualDensity: VisualDensity.compact,
                                  title: Text("Directions"),
                                  children: [
                                    Text(
                                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                                    ),
                                  ],
                                ),
                                Divider(height: 0),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: .bottomCenter,
              child: Container(
                margin: EdgeInsets.only(bottom: 42),
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                decoration: ShapeDecoration(
                  shape: StadiumBorder(),
                  color: .fromRGBO(18, 60, 21, 1),
                ),
                child: Text(
                  "Watch Video",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
