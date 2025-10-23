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
          Container(
            height: 340,
            decoration: BoxDecoration(
              color: Colors.blue,
              image: DecorationImage(
                image: NetworkImage(
                  "https://cdn.pixabay.com/photo/2016/11/18/17/46/house-1836070_1280.jpg",
                ),
                fit: BoxFit.cover,
              ),
            ),
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    spacing: 15,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Icon(Icons.arrow_back_ios_new),
                      ),
                      Spacer(),
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Icon(Icons.ios_share),
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Icon(Icons.favorite_border),
                      ),
                    ],
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      margin: EdgeInsets.all(16),
                      decoration: ShapeDecoration(
                        shape: StadiumBorder(),
                        color: Colors.black,
                      ),
                      padding: EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 4,
                      ),
                      child: Text(
                        "1/19",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(child: Column(children: [])),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: 100,
        margin: EdgeInsets.only(top: 12),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: .1),
              spreadRadius: 4,
              blurRadius: 8,
            ),
          ],
        ),
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 8),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "\$1,200,000",
                    style: TextStyle(fontWeight: FontWeight.w900, fontSize: 22),
                  ),
                  Text("List price: \$1,484,000"),
                ],
              ),
            ),
            Container(
              decoration: ShapeDecoration(
                shape: StadiumBorder(),
                color: Color.fromRGBO(128, 137, 38, 1),
              ),
              padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
              child: Text(
                "Schedule Tour",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
