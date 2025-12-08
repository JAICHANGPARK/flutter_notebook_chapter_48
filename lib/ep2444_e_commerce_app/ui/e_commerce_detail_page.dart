import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ECommerceDetailPage extends StatefulWidget {
  const ECommerceDetailPage({super.key});

  @override
  State<ECommerceDetailPage> createState() => _ECommerceDetailPageState();
}

class _ECommerceDetailPageState extends State<ECommerceDetailPage> {
  String selectedSize = "M";

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
                  height: 480,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: .only(
                      bottomRight: .circular(32),
                      bottomLeft: .circular(32),
                    ),
                  ),
                  child: SafeArea(
                    child: Padding(
                      padding: .all(8.0),
                      child: Column(
                        spacing: 16,
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                radius: 28,
                                backgroundColor: .fromRGBO(237, 241, 244, 1),
                                foregroundColor: Colors.black,
                                child: Icon(Icons.arrow_back_outlined),
                              ),
                              Expanded(
                                child: Center(
                                  child: Text(
                                    "Details",
                                    style: TextStyle(fontSize: 20),
                                  ),
                                ),
                              ),
                              CircleAvatar(
                                radius: 28,
                                backgroundColor: .fromRGBO(237, 241, 244, 1),
                                foregroundColor: Colors.black,
                                child: Icon(Icons.favorite_border),
                              ),
                            ],
                          ),
                          Expanded(
                            child: Stack(
                              children: [
                                Positioned.fill(
                                  child: Image.network(
                                    "https://cdn.pixabay.com/photo/2017/08/13/16/42/bears-2637756_1280.png",
                                  ),
                                ),
                                Positioned(
                                  top: 0,
                                  right: 8,
                                  bottom: 0,

                                  child: Container(
                                    width: 72,
                                    child: Column(
                                      spacing: 12,
                                      children: [
                                        Expanded(
                                          child: Container(
                                            width: 72,
                                            decoration: BoxDecoration(
                                              borderRadius: .circular(15),
                                              border: Border.all(
                                                color: Colors.grey,
                                              ),
                                            ),
                                            child: Image.network(
                                              "https://cdn.pixabay.com/photo/2017/08/13/16/42/bears-2637756_1280.png",
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Container(
                                            width: 72,
                                            decoration: BoxDecoration(
                                              borderRadius: .circular(15),
                                              border: Border.all(
                                                color: Colors.grey,
                                              ),
                                            ),
                                            child: Image.network(
                                              "https://cdn.pixabay.com/photo/2017/08/13/16/42/bears-2637756_1280.png",
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Container(
                                            width: 72,
                                            decoration: BoxDecoration(
                                              borderRadius: .circular(15),
                                              border: Border.all(
                                                color: Colors.grey,
                                              ),
                                            ),
                                            child: Image.network(
                                              "https://cdn.pixabay.com/photo/2017/08/13/16/42/bears-2637756_1280.png",
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Container(
                                            width: 72,
                                            decoration: BoxDecoration(
                                              borderRadius: .circular(15),
                                              border: Border.all(
                                                color: Colors.grey,
                                              ),
                                            ),
                                            child: Image.network(
                                              "https://cdn.pixabay.com/photo/2017/08/13/16/42/bears-2637756_1280.png",
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
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: .only(
                        topRight: .circular(32),
                        topLeft: .circular(32),
                      ),
                    ),
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: .start,
                          spacing: 16,
                          children: [
                            Row(
                              children: [
                                Text(
                                  "Men's pullover\nHoodie",
                                  style: TextStyle(
                                    // fontWeight:.bold,
                                    fontSize: 26,
                                  ),
                                ),
                                Spacer(),
                                Container(
                                  decoration: ShapeDecoration(
                                    shape: StadiumBorder(),
                                    color: .fromRGBO(237, 241, 244, 1),
                                  ),
                                  padding: .all(4),
                                  child: Row(
                                    spacing: 8,
                                    children: [
                                      CircleAvatar(
                                        radius: 24,
                                        backgroundColor: Colors.white,
                                        foregroundColor: Colors.black,
                                        child: Icon(Icons.remove),
                                      ),
                                      Text(
                                        "01",
                                        style: TextStyle(fontSize: 18),
                                      ),
                                      CircleAvatar(
                                        radius: 24,
                                        backgroundColor: Colors.black,
                                        foregroundColor: Colors.white,
                                        child: Icon(Icons.add),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              spacing: 8,
                              children: [
                                Text("From:", style: TextStyle(fontSize: 18)),
                                Text(
                                  "\$199.00",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: .bold,
                                  ),
                                ),
                                Spacer(),
                                CircleAvatar(radius: 16),
                                CircleAvatar(radius: 16),
                                CircleAvatar(radius: 16),
                                CircleAvatar(radius: 16),
                              ],
                            ),

                            Text("Select Size", style: TextStyle(fontSize: 16)),
                            SingleChildScrollView(
                              scrollDirection: .horizontal,
                              child: Row(
                                children:
                                    [
                                      "XS",
                                      "S",
                                      "M",
                                      "L",
                                      "XL",
                                      "XXL",
                                      "3XL",
                                    ].map((e) {
                                      return GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            selectedSize = e;
                                          });
                                        },
                                        child: Container(
                                          height: 48,
                                          width: 48,
                                          margin: .only(right: 8),
                                          decoration: BoxDecoration(
                                            shape: .circle,
                                            color: selectedSize == e
                                                ? Colors.black
                                                : Colors.transparent,
                                            border: Border.all(
                                              color: Colors.grey[200]!,
                                            ),
                                          ),

                                          child: Center(
                                            child: Text(
                                              "$e",
                                              style: TextStyle(
                                                color: selectedSize == e
                                                    ? Colors.white
                                                    : Colors.black,
                                              ),
                                            ),
                                          ),
                                        ),
                                      );
                                    }).toList(),
                              ),
                            ),
                            Gap(2),
                            Column(
                              crossAxisAlignment: .start,
                              spacing: 8,
                              children: [
                                Text("Description", style: TextStyle(fontSize: 16)),
                                Text(
                                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                                ),
                              ],
                            )

                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(color: Colors.white, height: 72),
          ),
          Align(
            alignment: .bottomCenter,
            child: Container(
              margin: EdgeInsets.all(32),
              height: 68,
              padding: EdgeInsets.all(8),
              decoration: ShapeDecoration(
                shape: StadiumBorder(),
                shadows: [
                  BoxShadow(
                    color: Colors.black.withValues(alpha: .1),
                    spreadRadius: 8,
                    blurRadius: 8,
                  ),
                ],
                color: Colors.white,
              ),
              child: Row(
                spacing: 12,
                children: [
                  Expanded(
                    child: Container(
                      decoration: ShapeDecoration(
                        shape: StadiumBorder(),
                        color: .fromRGBO(237, 241, 244, 1),
                      ),
                      child: Center(
                        child: Text(
                          "Add to Cart",
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      decoration: ShapeDecoration(
                        shape: StadiumBorder(),
                        color: Colors.black,
                      ),
                      child: Center(
                        child: Text(
                          "Buy Now",
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                      ),
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
