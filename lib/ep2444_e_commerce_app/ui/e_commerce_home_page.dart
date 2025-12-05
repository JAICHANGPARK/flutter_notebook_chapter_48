import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hugeicons/hugeicons.dart';

class ECommerceHomePage extends StatefulWidget {
  const ECommerceHomePage({super.key});

  @override
  State<ECommerceHomePage> createState() => _ECommerceHomePageState();
}

class _ECommerceHomePageState extends State<ECommerceHomePage> {
  int selectedTab = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: .fromRGBO(237, 241, 244, 1),
      body: Stack(
        children: [
          Positioned.fill(
            child: Column(
              spacing: 16,
              children: [
                Container(
                  height: 316,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: .only(
                      bottomRight: .circular(42),
                      bottomLeft: .circular(42),
                    ),
                  ),
                  child: SafeArea(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(16.0, 16, 16, 0),
                      child: Column(
                        crossAxisAlignment: .start,
                        mainAxisAlignment: .spaceBetween,
                        children: [
                          Row(
                            children: [
                              CircleAvatar(radius: 30),
                              Expanded(
                                child: Center(
                                  child: Text(
                                    "WINTER",
                                    style: TextStyle(fontSize: 20),
                                  ),
                                ),
                              ),
                              CircleAvatar(radius: 30),
                            ],
                          ),
                          Gap(16),
                          Text("Hello Dream", style: TextStyle(fontSize: 28)),
                          Gap(8),
                          Text("Fashion confidence and reveals beauty."),
                          Gap(16),
                          Container(
                            height: 54,
                            decoration: ShapeDecoration(
                              shape: StadiumBorder(),
                              color: .fromRGBO(237, 241, 244, 1),
                            ),
                            padding: EdgeInsets.only(left: 16),
                            child: Row(
                              children: [
                                Expanded(
                                  child: TextField(
                                    decoration: InputDecoration(
                                      border: .none,
                                      icon: Icon(Icons.search),
                                      hintText: "Search here",
                                    ),
                                  ),
                                ),
                                Container(
                                  decoration: ShapeDecoration(
                                    shape: StadiumBorder(),
                                    color: Colors.black,
                                  ),
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 20,
                                    vertical: 16,
                                  ),
                                  child: Row(
                                    spacing: 6,
                                    children: [
                                      Icon(
                                        Icons.tune_outlined,
                                        color: Colors.white,
                                        size: 16,
                                      ),
                                      Text(
                                        "Filter",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.only(left: 16, top: 16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: .only(
                        topLeft: .circular(42),
                        topRight: .circular(42),
                      ),
                    ),
                    child: Column(
                      spacing: 16,
                      children: [
                        SizedBox(
                          height: 52,
                          child: Builder(
                            builder: (context) {
                              final tabs = [
                                "Trending",
                                "Shows",
                                "Bog",
                                "Shirts",
                                "Pants",
                              ];
                              return ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: tabs.length,
                                itemBuilder: (context, index) {
                                  final item = tabs[index];

                                  return GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        selectedTab = index;
                                      });
                                    },
                                    child: Container(
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 24,
                                        vertical: 12,
                                      ),
                                      margin: EdgeInsets.only(right: 8),
                                      decoration: ShapeDecoration(
                                        shape: StadiumBorder(),
                                        color: selectedTab == index
                                            ? Colors.black
                                            : .fromRGBO(237, 241, 244, 1),
                                      ),
                                      child: Center(
                                        child: Text(
                                          item,
                                          style: TextStyle(
                                            color: selectedTab == index
                                                ? Colors.white
                                                : Colors.black,
                                          ),
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              );
                            },
                          ),
                        ),
                        Expanded(
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                Container(
                                  height: 360,
                                  margin: .only(bottom: 12, right: 16),
                                  decoration: ShapeDecoration(
                                    shape: RoundedSuperellipseBorder(
                                      borderRadius: .circular(16),
                                    ),
                                    color: .fromRGBO(237, 241, 244, 1),
                                  ),
                                  child: Stack(
                                    children: [
                                      Positioned.fill(
                                        child: Padding(
                                          padding: const EdgeInsets.all(12.0),
                                          child: Column(
                                            spacing: 12,
                                            children: [
                                              Expanded(
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius: .circular(16),
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius: .circular(16),
                                                ),
                                                padding: .symmetric(
                                                  horizontal: 12,
                                                  vertical: 12,
                                                ),
                                                child: Column(
                                                  spacing: 4,
                                                  children: [
                                                    Row(
                                                      mainAxisAlignment:
                                                          .spaceBetween,
                                                      children: [
                                                        Text(
                                                          "Men's Pullover",
                                                          style: TextStyle(
                                                            fontSize: 16,
                                                          ),
                                                        ),
                                                        Text("Price"),
                                                      ],
                                                    ),
                                                    Row(
                                                      mainAxisAlignment:
                                                          .spaceBetween,
                                                      children: [
                                                        Text(
                                                          "Hoodie",
                                                          style: TextStyle(
                                                            fontSize: 16,
                                                          ),
                                                        ),
                                                        Text(
                                                          "\$199.00",
                                                          style: TextStyle(
                                                            fontSize: 16,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        right: 4,
                                        top: 4,
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: .fromRGBO(237, 241, 244, 1),
                                            borderRadius: .only(
                                              bottomLeft: .circular(24),
                                            ),
                                          ),
                                          padding: .all(16),
                                          child: Icon(
                                            Icons.favorite_border,
                                            size: 18,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: .only(right: 16),
                                  child: IndexedStack(
                                    index: selectedTab,
                                    children: [
                                      GridView.builder(
                                        shrinkWrap: true,
                                        padding: .zero,
                                        gridDelegate:
                                            SliverGridDelegateWithFixedCrossAxisCount(
                                              crossAxisCount: 2,
                                              mainAxisSpacing: 8,
                                              crossAxisSpacing: 8,
                                              childAspectRatio: .7,
                                            ),
                                        itemCount: 10,
                                        itemBuilder: (context, index) {
                                          return Container(
                                            height: 360,
                                            margin: .only(bottom: 12),
                                            decoration: ShapeDecoration(
                                              shape: RoundedSuperellipseBorder(
                                                borderRadius: .circular(16),
                                              ),
                                              color: .fromRGBO(
                                                237,
                                                241,
                                                244,
                                                1,
                                              ),
                                            ),
                                            child: Stack(
                                              children: [
                                                Positioned.fill(
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                          12.0,
                                                        ),
                                                    child: Column(
                                                      spacing: 12,
                                                      children: [
                                                        Expanded(
                                                          child: Container(
                                                            decoration:
                                                                BoxDecoration(
                                                                  color: Colors
                                                                      .white,
                                                                  borderRadius:
                                                                      .circular(
                                                                        16,
                                                                      ),
                                                                ),
                                                          ),
                                                        ),
                                                        Container(
                                                          decoration:
                                                              BoxDecoration(
                                                                color: Colors
                                                                    .white,
                                                                borderRadius:
                                                                    .circular(
                                                                      16,
                                                                    ),
                                                              ),
                                                          padding: .symmetric(
                                                            horizontal: 12,
                                                            vertical: 12,
                                                          ),
                                                          child: Column(
                                                            spacing: 4,
                                                            children: [
                                                              Row(
                                                                mainAxisAlignment:
                                                                    .spaceBetween,
                                                                children: [
                                                                  Text(
                                                                    "Men's Pullover",
                                                                    style: TextStyle(
                                                                      fontSize:
                                                                          16,
                                                                    ),
                                                                  ),
                                                                  // Text("Price"),
                                                                ],
                                                              ),
                                                              Row(
                                                                mainAxisAlignment:
                                                                    .spaceBetween,
                                                                children: [
                                                                  Text(
                                                                    "Hoodie",
                                                                    style: TextStyle(
                                                                      fontSize:
                                                                          16,
                                                                    ),
                                                                  ),
                                                                  Text(
                                                                    "\$199.00",
                                                                    style: TextStyle(
                                                                      fontSize:
                                                                          16,
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                Positioned(
                                                  right: 4,
                                                  top: 4,
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                      color: .fromRGBO(
                                                        237,
                                                        241,
                                                        244,
                                                        1,
                                                      ),
                                                      borderRadius: .only(
                                                        bottomLeft: .circular(
                                                          24,
                                                        ),
                                                      ),
                                                    ),
                                                    padding: .all(16),
                                                    child: Icon(
                                                      Icons.favorite_border,
                                                      size: 18,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          );
                                        },
                                      ),
                                      Placeholder(),
                                      Placeholder(),
                                      Placeholder(),
                                      Placeholder(),
                                    ],
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
            ),
          ),
          Positioned(
            bottom: 42,
            left: 24,
            right: 24,
            child: ClipRRect(
              borderRadius: .circular(42),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                child: Container(
                  padding: .symmetric(horizontal: 24, vertical: 16),
                  decoration: ShapeDecoration(
                    shape: StadiumBorder(),
                    color: Colors.white12,
                    // shadows: [
                    //   BoxShadow(
                    //     color: Colors.grey[100]!,
                    //     blurRadius: 8,
                    //     spreadRadius: 8,
                    //   ),
                    // ],
                    // color: Colors.white,
                  ),
                  child: Row(
                    mainAxisAlignment: .spaceAround,
                    children: [
                      Column(
                        spacing: 4,
                        children: [
                          CircleAvatar(
                            radius: 4,
                            backgroundColor: Colors.black,
                          ),
                          Text("Home"),
                        ],
                      ),
                      Column(
                        spacing: 4,
                        children: [
                          // CircleAvatar(radius: 6, backgroundColor: Colors.black),
                          HugeIcon(icon: HugeIcons.strokeRoundedShoppingBag01),
                        ],
                      ),
                      Column(
                        spacing: 4,
                        children: [
                          // CircleAvatar(radius: 6, backgroundColor: Colors.black),
                          // Text("Home"),
                          HugeIcon(icon: HugeIcons.strokeRoundedShoppingCart01),
                        ],
                      ),
                      Column(
                        spacing: 4,
                        children: [
                          // CircleAvatar(radius: 6, backgroundColor: Colors.black),
                          // Text("Home"),
                          HugeIcon(icon: HugeIcons.strokeRoundedUser),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
