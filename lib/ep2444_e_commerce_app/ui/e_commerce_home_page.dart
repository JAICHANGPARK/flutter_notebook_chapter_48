import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ECommerceHomePage extends StatefulWidget {
  const ECommerceHomePage({super.key});

  @override
  State<ECommerceHomePage> createState() => _ECommerceHomePageState();
}

class _ECommerceHomePageState extends State<ECommerceHomePage> {
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
                                  decoration: InputDecoration(border: .none),
                                ),
                              ),
                              Container(
                                decoration: ShapeDecoration(
                                  shape: StadiumBorder(),
                                  color: Colors.black,
                                ),
                                padding: EdgeInsets.symmetric(
                                  horizontal: 15,
                                  vertical: 12,
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
                      SizedBox(height: 62, child: Placeholder()),
                      Expanded(child: Placeholder()),
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
