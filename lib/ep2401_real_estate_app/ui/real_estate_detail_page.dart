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
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(height: 320),
          Expanded(
            child: SingleChildScrollView(child: Column(children: [])),
          ),
        ],
      ),
      bottomNavigationBar: Container(height: 100, child: Row(children: [
        Expanded(child: Column(children: [
          
        ],)),
        Container(
          decoration: ShapeDecoration(shape: StadiumBorder(),),
        )
      ])),
    );
  }
}
