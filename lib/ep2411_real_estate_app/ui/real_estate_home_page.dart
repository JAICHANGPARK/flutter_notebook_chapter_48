import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_48/ep2411_real_estate_app/ui/real_estate_detail_page.dart';
import 'package:hugeicons/hugeicons.dart';

class RealEstateHomePage extends StatefulWidget {
  const RealEstateHomePage({super.key});

  @override
  State<RealEstateHomePage> createState() => _RealEstateHomePageState();
}

class _RealEstateHomePageState extends State<RealEstateHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned.fill(
            child: SafeArea(
              bottom: false,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 8,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      spacing: 20,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CircleAvatar(radius: 28),
                            CircleAvatar(
                              radius: 28,
                              backgroundColor: Colors.grey[50],
                              foregroundColor: Colors.black,
                              child: Badge(
                                child: HugeIcon(
                                  icon: HugeIcons.strokeRoundedNotification01,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          decoration: ShapeDecoration(
                            shape: StadiumBorder(),
                            color: Colors.grey[50]!,
                          ),
                          padding: EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 6,
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              suffixIcon: Icon(Icons.tune),
                              prefixIcon: Icon(Icons.search),
                              border: InputBorder.none,
                              hintText: "Search",
                              contentPadding: EdgeInsets.symmetric(
                                vertical: 12,
                              ),
                            ),
                          ),
                        ),
                        Text(
                          "Discover The Perfect\nProperty For You.",
                          style: TextStyle(
                            fontSize: 26,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: 10,
                      padding: EdgeInsets.zero,
                      itemBuilder: (context, index) => GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => RealEstateDetailPage(),
                            ),
                          );
                        },
                        child: Container(
                          height: 250,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                "https://cdn.pixabay.com/photo/2020/01/20/10/33/room-4779953_1280.jpg",
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                          padding: EdgeInsets.all(16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            spacing: 12,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    decoration: ShapeDecoration(
                                      shape: StadiumBorder(),
                                      color: Colors.white12,
                                    ),
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 12,
                                      vertical: 12,
                                    ),
                                    child: Text(
                                      "New Construction",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                  CircleAvatar(
                                    radius: 20,
                                    backgroundColor: Colors.white12,
                                    foregroundColor: Colors.white,
                                    child: Icon(Icons.favorite_border),
                                  ),
                                ],
                              ),
                              Spacer(),
                              Text(
                                "\$889,000",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 24,
                                ),
                              ),
                              Text(
                                "8721 S 72th Ave A, Tulsa, EK 1234545",
                                style: TextStyle(color: Colors.white),
                              ),
                              IntrinsicHeight(
                                child: Row(
                                  spacing: 6,
                                  children: [
                                    Text(
                                      "2",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        fontSize: 18,
                                      ),
                                    ),
                                    Text(
                                      "Beds",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    VerticalDivider(),
                                    Text(
                                      "2",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        fontSize: 18,
                                      ),
                                    ),
                                    Text(
                                      "Baths",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    VerticalDivider(),
                                    Text(
                                      "672",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        fontSize: 18,
                                      ),
                                    ),
                                    Text(
                                      "Sq. Ft",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 32),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                decoration: ShapeDecoration(
                  shape: StadiumBorder(),
                  color: Colors.white,
                ),
                padding: EdgeInsets.all(8),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.black,
                      foregroundColor: Colors.white,
                      child: Icon(Icons.home_filled),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
