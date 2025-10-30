import 'package:flutter/material.dart';

class RealEstateDetailPage extends StatefulWidget {
  const RealEstateDetailPage({super.key});

  @override
  State<RealEstateDetailPage> createState() => _RealEstateDetailPageState();
}

class _RealEstateDetailPageState extends State<RealEstateDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(child: ListView.builder(itemBuilder: (context,index){},))
        ],
      ),
    );
  }
}
