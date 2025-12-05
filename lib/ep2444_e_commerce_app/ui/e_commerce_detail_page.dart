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
                      padding: const EdgeInsets.all(8.0),
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
                          Expanded(child: Stack(children: [
                            Placeholder(),
                          ],))
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
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
