import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';

import 'real_estate_detail_page.dart';

class RealEstateMainScreen extends StatefulWidget {
  const RealEstateMainScreen({super.key});

  @override
  State<RealEstateMainScreen> createState() => _RealEstateMainScreenState();
}

class _RealEstateMainScreenState extends State<RealEstateMainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SafeArea(
        child: Column(
          spacing: 8,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                spacing: 12,
                children: [
                  CircleAvatar(radius: 24),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Dream Walker",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Find your new house",
                          style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 52,
                    width: 52,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey[200]!,
                          blurRadius: 12,
                          spreadRadius: 12,
                        ),
                      ],
                      color: Colors.white,
                    ),
                    child: Center(
                      child: HugeIcon(
                        icon: HugeIcons.strokeRoundedNotification01,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 16, right: 16, top: 16, bottom: 16),
              decoration: ShapeDecoration(
                shape: StadiumBorder(),
                shadows: [
                  BoxShadow(
                    color: Colors.grey[200]!,
                    blurRadius: 8,
                    spreadRadius: 8,
                  ),
                ],
                color: Colors.white,
              ),
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              child: Row(
                spacing: 12,
                children: [
                  Icon(Icons.search),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      spacing: 2,
                      children: [
                        Text(
                          "Property Type",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text("Beds · Baths · Price Range"),
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey[300]!),
                      shape: BoxShape.circle,
                    ),
                    padding: EdgeInsets.all(8),
                    child: Icon(Icons.tune),
                  ),
                ],
              ),
            ),

            Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.zero,
                child: Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Featured Property",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                              foregroundColor: Color.fromRGBO(139, 150, 82, 1),
                            ),
                            child: Text("View All"),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 310,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (BuildContext context, int index) {
                            return GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        RealEstateDetailPage(),
                                  ),
                                );
                              },
                              child: Container(
                                width: 220,
                                margin: EdgeInsets.only(right: 16),
                                // color: Colors.blue,
                                child: Column(
                                  spacing: 12,
                                  children: [
                                    Expanded(
                                      child: Container(
                                        decoration: ShapeDecoration(
                                          color: Colors.grey,
                                          shape: RoundedSuperellipseBorder(
                                            borderRadius: BorderRadius.circular(
                                              24,
                                            ),
                                          ),
                                          image: DecorationImage(
                                            image: NetworkImage(
                                              "https://cdn.pixabay.com/photo/2016/06/24/10/47/house-1477041_1280.jpg",
                                            ),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        child: Stack(
                                          children: [
                                            Positioned(
                                              right: 12,
                                              top: 12,
                                              child: CircleAvatar(
                                                backgroundColor: Colors.white,
                                                foregroundColor: Colors.black,
                                                radius: 18,
                                                child: Icon(
                                                  Icons.bookmark_border,
                                                  size: 18,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      spacing: 4,
                                      children: [
                                        Text(
                                          "Villa Serenity",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18,
                                          ),
                                        ),
                                        Row(
                                          spacing: 6,
                                          children: [
                                            Icon(
                                              Icons.location_on_outlined,
                                              size: 16,
                                            ),
                                            Text("Los Angeles, CA"),
                                          ],
                                        ),
                                        Row(
                                          spacing: 12,
                                          children: [
                                            Row(
                                              spacing: 4,
                                              children: [
                                                Icon(Icons.bed, size: 16),
                                                Text("4 Bed"),
                                              ],
                                            ),
                                            Row(
                                              spacing: 4,
                                              children: [
                                                Icon(
                                                  Icons.bathtub_outlined,
                                                  size: 16,
                                                ),
                                                Text("3 Bath"),
                                              ],
                                            ),
                                          ],
                                        ),
                                        Text(
                                          "\$1,200,000",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      SizedBox(height: 24),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Listing Agents",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                              foregroundColor: Color.fromRGBO(139, 150, 82, 1),
                            ),
                            child: Text("View All"),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 200,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.only(right: 12),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,

                                spacing: 8,
                                children: [
                                  CircleAvatar(radius: 46),
                                  Column(
                                    spacing: 4,
                                    children: [
                                      Text(
                                        "Dream Walker",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Row(
                                        spacing: 4,
                                        children: [
                                          Icon(
                                            Icons.star,
                                            color: Colors.orange,
                                            size: 18,
                                          ),
                                          Text("4.0(100)"),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: 100,

        child: BottomNavigationBar(
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Color.fromRGBO(139, 150, 82, 1),
          items: [
            BottomNavigationBarItem(
              icon: HugeIcon(icon: HugeIcons.strokeRoundedHome01),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: HugeIcon(icon: HugeIcons.strokeRoundedCalendar01),
              label: "Schedule",
            ),
            BottomNavigationBarItem(
              icon: HugeIcon(icon: HugeIcons.strokeRoundedFavourite),
              label: "Wishlist",
            ),
            BottomNavigationBarItem(
              icon: HugeIcon(icon: HugeIcons.strokeRoundedMessage01),
              label: "Message",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_outlined),
              label: "Profile",
            ),
          ],
        ),
      ),
    );
  }
}
