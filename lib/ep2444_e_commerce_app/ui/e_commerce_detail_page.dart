import 'package:flutter/material.dart';

class ECommerceDetailPage extends StatefulWidget {
  const ECommerceDetailPage({super.key});

  @override
  State<ECommerceDetailPage> createState() => _ECommerceDetailPageState();
}

class _ECommerceDetailPageState extends State<ECommerceDetailPage> {
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
                                        style: TextStyle(fontSize: 20),
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
                                Text("From:"),
                                Text("\$199.00"),
                                Spacer(),
                                CircleAvatar(radius: 16),
                                CircleAvatar(radius: 16),
                                CircleAvatar(radius: 16),
                                CircleAvatar(radius: 16),
                              ],
                            ),

                            Text("Select Size"),
                            Row(
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
                                    return Container(
                                      decoration: BoxDecoration(shape: .circle),
                                    );
                                  }).toList(),
                            ),
                            Text("Description"),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: .bottomCenter,
            child: Container(
              margin: EdgeInsets.all(32),
              height: 72,
              child: Placeholder(),
            ),
          ),
        ],
      ),
    );
  }
}
