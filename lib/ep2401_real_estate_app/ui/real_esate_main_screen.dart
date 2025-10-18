import 'package:flutter/material.dart';

class RealEstateMainScreen extends StatefulWidget {
  const RealEstateMainScreen({super.key});

  @override
  State<RealEstateMainScreen> createState() => _RealEstateMainScreenState();
}

class _RealEstateMainScreenState extends State<RealEstateMainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [Row(children: [])],
      ),
      bottomNavigationBar: BottomNavigationBar(items: []),
    );
  }
}
