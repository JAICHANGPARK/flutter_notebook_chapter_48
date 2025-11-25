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
          Positioned.fill(
            child: IndexedStack(
              index: pageNum,
              children: [
                Placeholder(),
                Placeholder(),
                Placeholder(),
                Placeholder(),
              ],
            ),
          ),
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
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        pageNum = 0;
                      });
                    },
                    child: Column(
                      spacing: 8,
                      mainAxisAlignment: .center,
                      children: [
                        Icon(
                          Icons.home_filled,
                          color: pageNum == 0
                              ? Color.fromRGBO(17, 60, 21, 1)
                              : Colors.black,
                          size: 28,
                        ),
                        Text("Home"),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        pageNum = 1;
                      });
                    },
                    child: Column(
                      spacing: 8,
                      mainAxisAlignment: .center,
                      children: [Icon(Icons.search,
                        color: pageNum == 1
                            ? Color.fromRGBO(17, 60, 21, 1)
                            : Colors.black,
                        size: 28,
                      ), Text("Search")],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        pageNum = 2;
                      });
                    },
                    child: Column(
                      spacing: 8,
                      mainAxisAlignment: .center,
                      children: [Icon(Icons.inbox,
                        color: pageNum == 2
                            ? Color.fromRGBO(17, 60, 21, 1)
                            : Colors.black,
                        size: 28,
                      ), Text("Saved")],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        pageNum = 3;
                      });
                    },
                    child: Column(
                      spacing: 8,
                      mainAxisAlignment: .center,
                      children: [
                        Icon(Icons.person_2_outlined,
                          color: pageNum == 3
                              ? Color.fromRGBO(17, 60, 21, 1)
                              : Colors.black,
                          size: 28,
                        ),
                        Text("Profile"),
                      ],
                    ),
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
