import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

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
          Column(
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
                        child: Padding(
                          padding: .only(right: 16),
                          child: IndexedStack(
                            index: selectedTab,
                            children: [
                              ListView.builder(
                                padding: .zero,
                                itemCount: 10,
                                itemBuilder: (context, index) {
                                  return Container(
                                    height: 320,
                                    margin: .only(bottom: 12),
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
                                                      borderRadius: .circular(
                                                        16,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius: .circular(16),
                                                  ),
                                                  padding: .symmetric(horizontal: 12, vertical: 12),
                                                  child: Column(
                                                    children: [
                                                      Row(
                                                        mainAxisAlignment: .spaceBetween,
                                                        children: [
                                                          Text(
                                                            "Men's Pullover",
                                                          ),
                                                          Text("Price"),
                                                        ],
                                                      ),
                                                      Row(
                                                        children: [
                                                          Text("Hoodie"),
                                                          Text("\$199.00"),
                                                        ],
                                                      ),
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
                                },
                              ),
                              Placeholder(),
                              Placeholder(),
                              Placeholder(),
                              Placeholder(),
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
        ],
      ),
    );
  }
}
