import 'package:flutter/material.dart';

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
                height: 320,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: .only(
                    bottomRight: .circular(42),
                    bottomLeft: .circular(42),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: .only(
                      topLeft: .circular(42),
                      topRight: .circular(42),
                    ),
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
